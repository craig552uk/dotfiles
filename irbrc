
# Tab completion
require 'irb/completion'
IRB.conf[:USE_READLINE] = true

# Custom Prompt
IRB.conf[:PROMPT][:CUSTOM] = {
    :PROMPT_I     => "> ",      # Normal Prompt
    :PROMPT_N     => "- ",      # Code Indent
    :PROMPT_S     => "- ",      # String Continuation
    :PROMPT_C     => "- ",      # Statement Continuation
    :RETURN       => "= %s\n",  # Return
    :AUTO_INDENT  => true
}

# Set Prompt
IRB.conf[:PROMPT_MODE] = :CUSTOM

# Display some useful info
IRB.conf[:IRB_RC] = lambda do |ctx|
  puts "\# Using ruby v#{RUBY_VERSION}"
  puts "\# Docs: http://www.ruby-doc.org/core-#{RUBY_VERSION}/"
end