require 'fileutils'

helpers do
  def init_repo(site)
    FileUtils.mkdir_p site.directory
    current_dir = Dir.getwd
    Dir.chdir site.directory
    `git init`
    Dir.chdir current_dir
  end
  
  def add_post_commit(site)
    post_commit = File.join(site.directory, '.git/hooks/post-commit')
    File.open(post_commit, 'w') do |f|
      f.write <<-HERE
#!/bin/sh
cd #{site.directory};
git reset --hard
touch #{site.directory}/tmp/restart.txt;
HERE
      f.chmod(0775)
    end
  end
  
  def cat_key(site)
    File.open("#{ENV['HOME']}/.ssh/authorized_keys", 'a') do |f|
      f << site.ssh_public_key
    end
  end
end
