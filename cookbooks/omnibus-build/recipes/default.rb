project_name = 'occi-cli'
home_dir = '/home/vagrant'
work_dir = "#{home_dir}/#{project_name}"
build_env = { "HOME" => home_dir }

bash 'run_omnibus_build' do
  user 'vagrant'
  group 'omnibus'
  environment build_env

  pkg_dir = "#{work_dir}/packages/#{node[:platform]}-#{node[:platform_version]}"
  cwd work_dir
  timeout 7200

  code <<-EOC
    export PATH="/opt/languages/ruby/2.1.5/bin:$PATH"
    bundle install --binstubs --path vendor/bundle
    bundle exec omnibus build #{project_name}

    if [ $? -eq 0 ]; then
      mkdir -p #{pkg_dir}
      cp #{work_dir}/pkg/* #{pkg_dir}
      rm -r #{work_dir}/pkg
      rm -r #{work_dir}/.bundle
    else
      exit 125
    fi
  EOC
end
