ExUnit.configure(formatters: [ExUnit.CLIFormatter, ExUnitSonarqube])
ExUnit.start()

Mox.defmock(DiscourseApi.HttpClientMockImpl, for: HttpClient)
