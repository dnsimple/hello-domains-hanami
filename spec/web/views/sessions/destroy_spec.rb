require_relative '../../../../apps/web/views/sessions/destroy'

RSpec.describe Web::Views::Sessions::Destroy do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/sessions/destroy.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  xit 'exposes #foo' do
    # Example
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
