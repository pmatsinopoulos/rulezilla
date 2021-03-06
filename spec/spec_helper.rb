require 'rulezilla'
require 'pry'

Dir.glob("spec/features/step_definitions/**/*steps.rb") { |f| load f, true }

Rulezilla.gherkin_rules_path = File.join(Dir.pwd, 'spec/features/gherkin_rules')

RSpec.configure do |config|
  config.after(:each) do
    Object.send(:remove_const, ('DummyRule').to_sym)               rescue NameError
    Object.send(:remove_const, 'DummyRuleRecord'.to_sym)           rescue NameError
    Object.send(:remove_const, 'DummyRuleSupport'.to_sym)          rescue NameError
    Object.send(:remove_const, (@rule_klass_name).to_sym)          rescue NameError
    Object.send(:remove_const, "#{@rule_klass_name}Record".to_sym) rescue NameError
    Object.send(:remove_const, "#{@support_name}Support".to_sym)   rescue NameError

    Rulezilla.send(:remove_const, (@rule_klass_name    || 'DummyRule').to_sym) rescue NameError
    Rulezilla.send(:remove_const, "#{(@rule_klass_name || 'DummyRule')}Record".to_sym) rescue NameError
    Rulezilla.send(:remove_const, "#{(@support_name    || 'DummyRule')}Support".to_sym) rescue NameError
  end
end
