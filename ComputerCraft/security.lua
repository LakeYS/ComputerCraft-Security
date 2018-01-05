exceptionName = "Lake_YS";
p = peripheral.wrap("right");
term.clear();
print("Monitor initialized.");
while true do
  for k, v in pairs( p.getPlayers() ) do
    if v.name ~= exceptionName then
      print(k .. ": " .. v.name)
    end
  end
  sleep(2);
end
-- TODO:
-- Set a per-player notification threshold of 30 min.
-- Add timestamp
-- Add failsafe (another computer that detects when the main one is tampered with)
-- Detect when sensor broken, recover when sensor replaced
-- Discord integration
-- Allow a multi-player whitelist?
-- Input redstone signal to disable/enable (depending on config)
-- Output redstone signal on enemy detected
-- Option to ping every time a redstone signal is received, regardless of players nearby, with custom msg.
-- Individual messages for each redstone direction
