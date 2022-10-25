Describe 'migration tests scripts'
  Include "spec/spec_helper.sh"
  BeforeEach 'setup'

  It 'fetchPath.sh'
    When run command stdbuf -e L bash -e fetchPath.sh
    The status should be success
    The lines of stdout should equal 0
    The lines of stderr should equal 0
  End
End
