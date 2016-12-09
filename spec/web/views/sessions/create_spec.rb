require_relative '../../../../apps/web/views/sessions/create'

RSpec.describe Web::Views::Sessions::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/sessions/create.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }
end
