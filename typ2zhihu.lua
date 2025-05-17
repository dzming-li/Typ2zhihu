-- zhihu_math_dedup.lua

-- 初始化已处理的数学公式集合
local seen_math = {}

-- 处理数学公式元素
function Math(elem)
  local key = elem.text
  if seen_math[key] then
    -- 如果该公式已处理过，返回空以移除重复
    return {}
  else
    -- 记录该公式为已处理
    seen_math[key] = true
    if elem.mathtype == "DisplayMath" then
      -- 处理块级公式：替换换行符为空格，并添加结尾换行符以确保知乎正确渲染
      local content = elem.text:gsub("\n", " ")
      content = content .. " \\\\"
      return pandoc.RawBlock("markdown", "$$\n" .. content .. "\n$$")
    elseif elem.mathtype == "InlineMath" then
      -- 处理行内公式：转换为块级公式格式
      return pandoc.RawInline("markdown", "$$" .. elem.text .. "$$")
    else
      -- 对于其他类型，保持原样
      return elem
    end
  end
end
