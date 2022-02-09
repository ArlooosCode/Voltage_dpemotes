local isInRagdoll = false

CreateThread(function()
 while true do
    Citizen.Wait(10)
    if isInRagdoll then
      SetPedToRagdoll(Citizen.InvokeNative(0x43A66C31C68491C0, -1), 1000, 1000, 0, 0, 0, 0)
    end
  end
end)

CreateThread(function()
    while true do
    Citizen.Wait(0)
    if IsControlJustPressed(2, Config.RagdollKeybind) and Config.RagdollEnabled and IsPedOnFoot(PlayerPedId()) then
        if isInRagdoll then
            isInRagdoll = false
        else
            isInRagdoll = true
            Wait(500)
        end
    end
  end
end)

