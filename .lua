-- ============================================================
-- BIN BIN - STEAL AN EGG SCRIPT (TIẾNG VIỆT)
-- Dựa trên giao diện Ajjans Steal a Egg V4.7
-- ============================================================

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "BIN BIN",
    LoadingTitle = "Đang tải Bin Bin...",
    LoadingSubtitle = "Steal An Egg V4.7",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "BinBin_StealAnEgg",
        FileName = "CauHinh"
    },
    Discord = { Enabled = false, Invite = "", RememberJoins = true },
    KeySystem = false
})

-- ============================================================
-- TAB CHÍNH (MAIN)
-- ============================================================
local TabMain = Window:CreateTab("Chính", 4483362458)

TabMain:CreateSection("Trộm Trứng")

TabMain:CreateDropdown({
    Name = "Khu Vực",
    Options = {"Tất cả", "Khu 1", "Khu 2", "Khu 3"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "AreaDropdown",
    Callback = function(opt) end
})

TabMain:CreateDropdown({
    Name = "Phân Loại",
    Options = {"Tất cả", "Thường", "Sự kiện", "Rift"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "CategoryDropdown",
    Callback = function(opt) end
})

TabMain:CreateDropdown({
    Name = "Độ Hiếm",
    Options = {"Thường", "Hiếm", "Cực Hiếm", "Huyền Thoại", "Thần Thoại", "Bí Mật"},
    CurrentOption = {"Huyền Thoại", "Thần Thoại", "Bí Mật"},
    MultipleOptions = true,
    Flag = "RarityDropdown",
    Callback = function(opt) end
})

TabMain:CreateDropdown({
    Name = "Đột Biến",
    Options = {"Tất cả", "Không", "Vàng", "Kim Cương", "Cầu Vồng"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "MutationDropdown",
    Callback = function(opt) end
})

TabMain:CreateDropdown({
    Name = "Ưu Tiên Mục Tiêu",
    Options = {"KG cao nhất trước", "Giá trị cao nhất trước", "Gần nhất trước"},
    CurrentOption = {"KG cao nhất trước"},
    MultipleOptions = false,
    Flag = "TargetPriorityDropdown",
    Callback = function(opt) end
})

TabMain:CreateToggle({
    Name = "Tự Động Trộm Đã Chọn",
    CurrentValue = false,
    Flag = "AutoStealSelected",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Trộm Tất Cả",
    CurrentValue = false,
    Flag = "AutoStealAll",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Thả Trứng Đang Giữ",
    CurrentValue = false,
    Flag = "AutoDropHeldEgg",
    Callback = function(v) end
})

TabMain:CreateSection("Drone")

TabMain:CreateToggle({
    Name = "Tự Động Đánh Drone",
    CurrentValue = false,
    Flag = "AutoFightDrone",
    Callback = function(v) end
})

TabMain:CreateDropdown({
    Name = "Ưu Tiên Mục Tiêu",
    Options = {"Mẫu cao nhất", "Gần nhất", "Máu thấp nhất"},
    CurrentOption = {"Mẫu cao nhất"},
    MultipleOptions = false,
    Flag = "DroneTargetPriority",
    Callback = function(opt) end
})

TabMain:CreateToggle({
    Name = "Ưu Tiên Drone Mảnh Vault",
    CurrentValue = false,
    Flag = "PrioritizeVaultDrones",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Mua Vật Phẩm",
    CurrentValue = false,
    Flag = "AutoBuyItems",
    Callback = function(v) end
})

TabMain:CreateDropdown({
    Name = "Chọn Vật Phẩm Shop Drone",
    Options = {"Tất cả", "Khiên", "Tốc độ", "Sát thương"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "DroneShopItems",
    Callback = function(opt) end
})

TabMain:CreateButton({
    Name = "Mở Shop Drone",
    Callback = function() end
})

TabMain:CreateSection("Phòng Thủ")

TabMain:CreateToggle({
    Name = "Aura Gậy (Kill Aura)",
    CurrentValue = false,
    Flag = "BatKillAura",
    Callback = function(v) end
})

TabMain:CreateSlider({
    Name = "Tầm Aura",
    Range = {1, 50},
    Increment = 1,
    Suffix = "",
    CurrentValue = 15,
    Flag = "AuraRange",
    Callback = function(v) end
})

TabMain:CreateSlider({
    Name = "Độ Trễ Tấn Công",
    Range = {0.1, 2},
    Increment = 0.1,
    Suffix = "s",
    CurrentValue = 0.1,
    Flag = "AttackDelay",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Trang Bị Gậy",
    CurrentValue = false,
    Flag = "AutoEquipBat",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Chống Đánh",
    CurrentValue = false,
    Flag = "AntiHit",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Bắt Trứng",
    CurrentValue = false,
    Flag = "CaptureEgg",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Chống Bẫy",
    CurrentValue = false,
    Flag = "AntiTrap",
    Callback = function(v) end
})

TabMain:CreateSection("Nâng Cấp")

TabMain:CreateToggle({
    Name = "Tự Động Trang Bị Pet Tốt Nhất",
    CurrentValue = false,
    Flag = "AutoEquipBestPet",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Luyện Treadmill",
    CurrentValue = false,
    Flag = "AutoTreadmillTraining",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Nâng Treadmill",
    CurrentValue = false,
    Flag = "AutoTreadmillUpgrade",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Nâng Base",
    CurrentValue = false,
    Flag = "AutoBaseUpgrade",
    Callback = function(v) end
})

TabMain:CreateInput({
    Name = "Dự Trữ Tiền",
    CurrentValue = "0",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Flag = "CashReserve",
    Callback = function(txt) end
})

TabMain:CreateSection("Di Chuyển & Vật Lý")

TabMain:CreateToggle({
    Name = "Bật Tốc Độ",
    CurrentValue = false,
    Flag = "EnableSpeed",
    Callback = function(v) end
})

TabMain:CreateSlider({
    Name = "Giá Trị Tốc Độ",
    Range = {16, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 219,
    Flag = "SpeedValue",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Nhảy Vô Hạn",
    CurrentValue = false,
    Flag = "InfiniteJump",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Bay",
    CurrentValue = false,
    Flag = "Fly",
    Callback = function(v) end
})

TabMain:CreateSlider({
    Name = "Tốc Độ Bay",
    Range = {10, 200},
    Increment = 5,
    Suffix = "",
    CurrentValue = 50,
    Flag = "FlySpeed",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Chống AFK",
    CurrentValue = false,
    Flag = "AntiAFK",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tương Tác Tức Thì",
    CurrentValue = false,
    Flag = "InstantInteract",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tự Động Chạy",
    CurrentValue = false,
    Flag = "AutoExecute",
    Callback = function(v) end
})

TabMain:CreateSection("Webhook")

TabMain:CreateToggle({
    Name = "Bật Webhook",
    CurrentValue = false,
    Flag = "EnableWebhook",
    Callback = function(v) end
})

TabMain:CreateInput({
    Name = "URL Webhook",
    CurrentValue = "",
    PlaceholderText = "https://discord.com/api/webhooks/...",
    RemoveTextAfterFocusLost = false,
    Flag = "WebhookURL",
    Callback = function(txt) end
})

TabMain:CreateInput({
    Name = "ID Discord (ping)",
    CurrentValue = "",
    PlaceholderText = "123456789012345678",
    RemoveTextAfterFocusLost = false,
    Flag = "DiscordID",
    Callback = function(txt) end
})

TabMain:CreateToggle({
    Name = "Nhắc @everyone",
    CurrentValue = false,
    Flag = "MentionEveryone",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Log Mất Kết Nối / Kết Nối Lại",
    CurrentValue = false,
    Flag = "LogDisconnect",
    Callback = function(v) end
})

TabMain:CreateButton({
    Name = "Gửi Thử Nghiệm",
    Callback = function() end
})

TabMain:CreateSection("Khác")

TabMain:CreateToggle({
    Name = "Tự Động Kết Nối Lại",
    CurrentValue = false,
    Flag = "AutoReconnect",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Ẩn Pet",
    CurrentValue = false,
    Flag = "HidePets",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "Tăng FPS",
    CurrentValue = false,
    Flag = "FPSBoost",
    Callback = function(v) end
})

TabMain:CreateButton({
    Name = "Tham Gia Discord",
    Callback = function() end
})

TabMain:CreateSection("Hình Ảnh")

TabMain:CreateToggle({
    Name = "ESP Trứng",
    CurrentValue = false,
    Flag = "ESPEEggs",
    Callback = function(v) end
})

TabMain:CreateDropdown({
    Name = "ESP Độ Hiếm",
    Options = {"Tất cả", "Huyền Thoại", "Thần Thoại", "Bí Mật"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "ESPRarities",
    Callback = function(opt) end
})

TabMain:CreateToggle({
    Name = "ESP Hiển Thị Thông Tin",
    CurrentValue = false,
    Flag = "ESPShowInfo",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "ESP Bảo Vệ",
    CurrentValue = false,
    Flag = "ESPGuards",
    Callback = function(v) end
})

TabMain:CreateToggle({
    Name = "ESP Người Chơi",
    CurrentValue = false,
    Flag = "ESPPlayers",
    Callback = function(v) end
})

TabMain:CreateSection("Cấu Hình")

TabMain:CreateInput({
    Name = "Tên Cấu Hình",
    CurrentValue = "",
    PlaceholderText = "Nhập tên...",
    RemoveTextAfterFocusLost = false,
    Flag = "ConfigName",
    Callback = function(txt) end
})

TabMain:CreateButton({ Name = "Tạo Cấu Hình", Callback = function() end })
TabMain:CreateButton({ Name = "Tải Cấu Hình", Callback = function() end })
TabMain:CreateButton({ Name = "Ghi Đè Cấu Hình", Callback = function() end })
TabMain:CreateButton({ Name = "Xóa Cấu Hình", Callback = function() end })
TabMain:CreateButton({ Name = "Làm Mới Danh Sách", Callback = function() end })
TabMain:CreateButton({ Name = "Đặt Làm Tự Động Tải", Callback = function() end })
TabMain:CreateButton({ Name = "Đặt Lại Tự Động Tải", Callback = function() end })

-- ============================================================
-- TAB TỰ ĐỘNG (AUTOMATION)
-- ============================================================
local TabAuto = Window:CreateTab("Tự Động", 4483362458)

TabAuto:CreateSection("Vòng Lặp Tự Động")

TabAuto:CreateToggle({
    Name = "Bật Vòng Lặp Tự Động",
    CurrentValue = false,
    Flag = "AutoLoop",
    Callback = function(v) end
})

TabAuto:CreateDropdown({
    Name = "Ưu Tiên Tự Động",
    Options = {"Tự Động Trộm Trứng", "Tự Động Treadmill", "Tự Động Rift", "Tự Động Ghép Pet"},
    CurrentOption = {"Tự Động Trộm Trứng", "Tự Động Treadmill"},
    MultipleOptions = true,
    Flag = "AutoPriority",
    Callback = function(opt) end
})

TabAuto:CreateSlider({
    Name = "Thời Gian Chuyển Vòng",
    Range = {5, 120},
    Increment = 5,
    Suffix = "s",
    CurrentValue = 30,
    Flag = "RotationCD",
    Callback = function(v) end
})

TabAuto:CreateParagraph({
    Title = "Trạng Thái",
    Content = "Đang chờ - không có việc nào sẵn sàng"
})

TabAuto:CreateParagraph({
    Title = "Ưu Tiên",
    Content = "1. Tự Động Trộm Trứng\n2. Tự Động Treadmill"
})

TabAuto:CreateSection("Vòng Đời Trứng")

TabAuto:CreateDropdown({
    Name = "Phân Loại",
    Options = {"Tất cả", "Thường", "Sự kiện", "Rift"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "LifecycleCategory",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Độ Hiếm",
    Options = {"Thường", "Hiếm", "Cực Hiếm", "Huyền Thoại", "Thần Thoại", "Bí Mật"},
    CurrentOption = {"Huyền Thoại", "Thần Thoại", "Bí Mật"},
    MultipleOptions = true,
    Flag = "LifecycleRarity",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Đột Biến",
    Options = {"Tất cả", "Không", "Vàng", "Kim Cương", "Cầu Vồng"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "LifecycleMutation",
    Callback = function(opt) end
})

TabAuto:CreateInput({
    Name = "Min $/s (0 = bất kỳ)",
    CurrentValue = "0",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Flag = "LifecycleMinValue",
    Callback = function(txt) end
})

TabAuto:CreateToggle({ Name = "Tự Động Đặt Đã Chọn", CurrentValue = false, Flag = "AutoPlaceSelected", Callback = function(v) end })
TabAuto:CreateToggle({ Name = "Tự Động Đặt Tất Cả", CurrentValue = false, Flag = "AutoPlaceAll", Callback = function(v) end })
TabAuto:CreateToggle({ Name = "Tự Động Ấp Đã Chọn", CurrentValue = false, Flag = "AutoHatchSelected", Callback = function(v) end })
TabAuto:CreateToggle({ Name = "Tự Động Ấp Tất Cả", CurrentValue = false, Flag = "AutoHatchAll", Callback = function(v) end })

TabAuto:CreateSection("Tự Động Yêu Thích Pet")

TabAuto:CreateDropdown({
    Name = "Phân Loại",
    Options = {"Tất cả", "Thường", "Sự kiện", "Rift"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "FavCategory",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Độ Hiếm",
    Options = {"Thường", "Hiếm", "Cực Hiếm", "Huyền Thoại", "Thần Thoại", "Bí Mật"},
    CurrentOption = {"Huyền Thoại", "Thần Thoại", "Bí Mật"},
    MultipleOptions = true,
    Flag = "FavRarity",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Đột Biến",
    Options = {"Tất cả", "Không", "Vàng", "Kim Cương", "Cầu Vồng"},
    CurrentOption = {"Tất cả"},
    MultipleOptions = true,
    Flag = "FavMutation",
    Callback = function(opt) end
})

TabAuto:CreateInput({
    Name = "Min $/s (0 = bất kỳ)",
    CurrentValue = "0",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Flag = "FavMinValue",
    Callback = function(txt) end
})

TabAuto:CreateToggle({ Name = "Tự Động Yêu Thích Pet", CurrentValue = false, Flag = "AutoFavPet", Callback = function(v) end })

TabAuto:CreateSection("Ghép Pet (Fuse)")

TabAuto:CreateToggle({ Name = "Tự Động Ghép Pet", CurrentValue = false, Flag = "AutoFuse", Callback = function(v) end })

TabAuto:CreateDropdown({
    Name = "Độ Hiếm Ghép",
    Options = {"Thường", "Hiếm", "Cực Hiếm", "Huyền Thoại", "Thần Thoại", "Bí Mật"},
    CurrentOption = {"Thường", "Hiếm", "Cực Hiếm"},
    MultipleOptions = true,
    Flag = "FuseRarity",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Đột Biến Ghép",
    Options = {"Tất cả", "Không", "Vàng", "Kim Cương", "Cầu Vồng"},
    CurrentOption = {"Không"},
    MultipleOptions = true,
    Flag = "FuseMutation",
    Callback = function(opt) end
})

TabAuto:CreateDropdown({
    Name = "Chọn Nhóm Bằng",
    Options = {"Độ hiếm cao nhất", "Giá trị cao nhất", "Số lượng nhiều nhất"},
    CurrentOption = {"Độ hiếm cao nhất"},
    MultipleOptions = false,
    Flag = "FuseGroupBy",
    Callback = function(opt) end
})

TabAuto:CreateToggle({ Name = "Không Bao Giờ Ghép Đột Biến", CurrentValue = false, Flag = "NeverFuseMutated", Callback = function(v) end })

TabAuto:CreateSection("Phần Thưởng")

TabAuto:CreateToggle({ Name = "Tự Động Nhận Thưởng Chỉ Mục", CurrentValue = false, Flag = "AutoClaimIndex", Callback = function(v) end })
TabAuto:CreateToggle({ Name = "Tự Động Nhận Thưởng Nhóm", CurrentValue = false, Flag = "AutoClaimGroup", Callback = function(v) end })
TabAuto:CreateToggle({ Name = "Tự Động Nhận Thu Nhập Ngoại Tuyến", CurrentValue = false, Flag = "AutoClaimOffline", Callback = function(v) end })

TabAuto:CreateSection("Tự Động Hoàn Thành Tiết Lộ")

TabAuto:CreateToggle({ Name = "Tự Động Hoàn Thành Tiết Lộ", CurrentValue = false, Flag = "AutoCompleteReveal", Callback = function(v) end })

TabAuto:CreateSlider({ Name = "Tỷ Lệ Tối Đa Để Ghép", Range = {1, 50}, Increment = 1, Suffix = "", CurrentValue = 10, Flag = "MaxScaleFuse", Callback = function(v) end })
TabAuto:CreateSlider({ Name = "Giữ Lại Mỗi Loại Pet", Range = {0, 50}, Increment = 1, Suffix = "", CurrentValue = 0, Flag = "KeepPerPetType", Callback = function(v) end })
TabAuto:CreateSlider({ Name = "Khoảng Thời Gian Ghép", Range = {1, 60}, Increment = 1, Suffix = "s", CurrentValue = 8, Flag = "FuseInterval", Callback = function(v) end })

TabAuto:CreateButton({ Name = "Ghép Ngay", Callback = function() end })

-- ============================================================
-- TAB SỰ KIỆN (EVENTS)
-- ============================================================
local TabEvents = Window:CreateTab("Sự Kiện", 4483362458)

TabEvents:CreateParagraph({ Title = "Sự Kiện Tiếp Theo Trong", Content = "05m 57s" })
TabEvents:CreateParagraph({ Title = "Mẫu", Content = "90" })

TabEvents:CreateSection("Két Thí Nghiệm Bị Đánh Cắp")

TabEvents:CreateToggle({ Name = "Tự Động Nhận Thưởng Két", CurrentValue = false, Flag = "AutoClaimVault", Callback = function(v) end })
TabEvents:CreateButton({ Name = "Nhận Thưởng Két", Callback = function() end })
TabEvents:CreateButton({ Name = "Mở Cửa Sổ Két", Callback = function() end })

TabEvents:CreateParagraph({ Title = "Trạng Thái", Content = "Thiếu 3 phần" })
TabEvents:CreateParagraph({ Title = "Phần Bị Mất (Biomes)", Content = "2 / 2" })

-- ============================================================
-- TAB DỰ ĐOÁN (PREDICTOR)
-- ============================================================
local TabPredictor = Window:CreateTab("Dự Đoán", 4483362458)

TabPredictor:CreateParagraph({ Title = "Thông Báo", Content = "Tính năng dự đoán đang được phát triển." })

-- ============================================================
-- TAB KHÁC (MISC)
-- ============================================================
local TabMisc = Window:CreateTab("Khác", 4483362458)

TabMisc:CreateSection("Tự Động Rift")

TabMisc:CreateToggle({ Name = "Tự Động Trộm Pet Yêu Cầu", CurrentValue = false, Flag = "AutoStealRequired", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Tự Động Đặt Trứng Yêu Cầu", CurrentValue = false, Flag = "AutoPlaceRequired", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Dừng Sau Khi Đủ Yêu Cầu", CurrentValue = false, Flag = "StopAfterRequirement", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Tự Động Ấp Trứng Yêu Cầu", CurrentValue = false, Flag = "AutoHatchRequired", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Tự Động Đặt Trứng Rift", CurrentValue = false, Flag = "AutoPlaceRiftEgg", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Tự Động Ấp Trứng Rift", CurrentValue = false, Flag = "AutoHatchRiftEgg", Callback = function(v) end })
TabMisc:CreateToggle({ Name = "Tự Động Hiến Tế Pet", CurrentValue = false, Flag = "AutoSacrificePet", Callback = function(v) end })

TabMisc:CreateDropdown({
    Name = "Banner Trứng",
    Options = {"Riftborn, Riftbeasts, ...", "Tất cả"},
    CurrentOption = {"Riftborn, Riftbeasts, ..."},
    MultipleOptions = false,
    Flag = "EggBanner",
    Callback = function(opt) end
})

TabMisc:CreateSection("Rift")

TabMisc:CreateParagraph({ Title = "Banner", Content = "Riftbeasts (Umbr al)" })
TabMisc:CreateParagraph({ Title = "Xoay Trong", Content = "1h 36m" })
TabMisc:CreateParagraph({ Title = "Bảo Hiểm", Content = "0 / 50" })
TabMisc:CreateParagraph({
    Title = "Yêu Cầu",
    Content = "Swordfish (Epic): 1/1\nCosmic Gecko (Legendary): 0/1\nCosmic Gorilla (Mythic): 0/1"
})
TabMisc:CreateParagraph({ Title = "Trạng Thái", Content = "1 / 3 Pet Sẵn Sàng (Thiếu 2)" })

-- ============================================================
-- TAB MỞ KHÓA (UNLOCK)
-- ============================================================
local TabUnlock = Window:CreateTab("Mở Khóa", 4483362458)

TabUnlock:CreateButton({
    Name = "Mở Khóa Script",
    Callback = function()
        Rayfield:Notify({ Title = "Bin Bin", Content = "Script đã được mở khóa!", Duration = 5 })
    end
})

-- ============================================================
-- ĐỔI NÚT BẬT/TẮT MENU THÀNH CHỮ "B"
-- ============================================================
task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local waited = 0
    while waited 
        local rayGui = CoreGui:FindFirstChild("Rayfield")
        if rayGui then
            for _, obj in ipairs(rayGui:GetDescendants()) do
                if obj:IsA("ImageButton") or obj:IsA("TextButton") then
                    if obj.AbsoluteSize.X > 30 and obj.AbsoluteSize.X < 70 and math.abs(obj.AbsoluteSize.X - obj.AbsoluteSize.Y) < 5 then
                        if not obj:FindFirstChild("BinBinText") then
                            local t = Instance.new("TextLabel")
                            t.Name = "BinBinText"
                            t.Parent = obj
                            t.Size = UDim2.new(1, 0, 1, 0)
                            t.BackgroundTransparency = 1
                            t.Text = "B"
                            t.TextColor3 = Color3.fromRGB(255, 255, 255)
                            t.TextScaled = true
                            t.Font = Enum.Font.GothamBold
                            t.ZIndex = 10
                        end
                    end
                end
            end
            break
        end
        task.wait(0.5)
        waited = waited + 0.5
    end
end)

Rayfield:Notify({
    Title = "Bin Bin",
    Content = "Đã tải thành công! Nhấn nút B để ẩn/hiện menu.",
    Duration = 5
})
