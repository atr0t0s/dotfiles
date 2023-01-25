require("stabilize").setup({
  force = true,
  forcemark = nil,
  ignore = {
    filetype = { },
    buftype = { "terminal", "quickfix", "loclist" }
  },
  nested = nil
})
