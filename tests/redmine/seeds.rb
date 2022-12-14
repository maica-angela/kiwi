User.where(login: "admin", last_login_on: nil, must_change_passwd: true).update_all(must_change_passwd: false)

IssueStatus.create :name => "OPEN", :is_closed => false
IssueStatus.create :name => "CLOSED", :is_closed => true

tester_role = Role.create :name => "Tester", :assignable => 1
tester_role.add_permission!(:view_issues)
tester_role.add_permission!(:add_issues)

Tracker.create :name => "Bugs", :default_status_id => 1

Enumeration.create :type => "IssuePriority", :name => "P1", :active => true, :is_default => true
Enumeration.create :type => "IssuePriority", :name => "P2", :active => true, :is_default => true
Enumeration.create :type => "IssuePriority", :name => "P3", :active => true, :is_default => true
