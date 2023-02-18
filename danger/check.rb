module Check

  # Check only new lines
  # String to compare named: what_compare
  def self.check_new_lines?(diff, what_compare = "")
  	lines = diff.lines.select { |line| line.start_with? "+"}
  	lines.any? { |line| line.include?(what_compare)}
  end
  # Check comment swiftlint:disable
  def self.swiftlint_disabled?(diff)
    check_new_lines?(diff, "swiftlint:disable")
  end

   # Vaild PR description
   # Check defoult decription from pull_request_template.md
  def self.pr_description_valid?(string)
     not string.include? "_PR Template file content_"
  end
end