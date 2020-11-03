class ExampleWorker
  include Sidekiq::Worker
  sidekiq_options queue: :test, retry: 5

  def perform(name, count)
    # do something
  end
end
