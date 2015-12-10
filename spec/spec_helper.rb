module DirHeplers
  def spec_dir
    File.expand_path('../', __FILE__)
  end

  def result_file(name)
    File.join(spec_dir, 'results', name)
  end

  def stub_file(name)
    File.join(spec_dir, 'stubs', name)
  end
end

RSpec.configure do |config|
  config.extend DirHeplers
  config.backtrace_exclusion_patterns = [ /gems/ ]
  config.color = true
end
