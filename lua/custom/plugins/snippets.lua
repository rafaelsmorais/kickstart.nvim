local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('javascript', {
  s('cyget', {
    t 'cy.get(',
    i(1),
    t ')',
  }),
  s('cyv', {
    t 'cy.visit(',
    i(1),
    t ')',
  }),
  s(
    'ctx',
    fmt(
      [[
    ctx({}, () => {{
    {}
    }})
    ]],
      { i(1), i(1) }
    )
  ),
})
