local status, neoscroll = pcall(require, 'neoscroll')
if not status then
  vim.notice('neoscroll not found')
  return
end

neoscroll.setup()

