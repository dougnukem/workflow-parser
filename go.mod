module github.com/actions/workflow-parser

require (
	github.com/hashicorp/hcl v1.0.0
	github.com/soniakeys/graph v0.0.0
	github.com/stretchr/testify v1.3.0
)

// Forked dependencies that you want to replace the canonical dependencies but maintain package import name
replace github.com/hashicorp/hcl v1.0.0 => github.com/actions/hcl v0.0.0-20190212201112-20925aa1dc5dd2a3591fa42cf2bc72b4f2317c40
