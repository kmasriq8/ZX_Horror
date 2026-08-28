-- ╔═══════════════════════════════════════════════════════════════════════════════╗
-- ║                     ZX HORROR - CONFIGURATION FILE                              ║
-- ║                    سكربت الرعب الإحترافي لـ FiveM QBCore                         ║
-- ╚═══════════════════════════════════════════════════════════════════════════════╝

Config = {}

-- ═══════════════════════════════════════════════════════════════════════════════
-- GENERAL SETTINGS
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Debug = true
Config.Language = 'ar'
Config.UpdateInterval = 100 -- ms

-- ═══════════════════════════════════════════════════════════════════════════════
-- LEVELS & XP SYSTEM
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Levels = {
    [1] = { xpRequired = 0, name = 'مبتدئ', color = '^2' },
    [2] = { xpRequired = 100, name = 'مستكشف', color = '^3' },
    [3] = { xpRequired = 250, name = 'محقق', color = '^4' },
    [4] = { xpRequired = 500, name = 'ناجٍ', color = '^5' },
    [5] = { xpRequired = 1000, name = 'متمرس', color = '^1' },
    [6] = { xpRequired = 1500, name = 'خبير', color = '^6' },
    [7] = { xpRequired = 2500, name = 'صياد', color = '^2' },
    [8] = { xpRequired = 4000, name = 'محارب', color = '^3' },
    [9] = { xpRequired = 6000, name = 'باحث مظلم', color = '^1' },
    [10] = { xpRequired = 10000, name = 'حاكم الظلام', color = '^4' },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- CHAPTERS
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Chapters = {
    [1] = {
        id = 'CHAPTER_1',
        name = 'الإشارة',
        description = 'اكتشاف إشارة غريبة في المنطقة المهجورة',
        levelRequired = 1,
        xpReward = 500,
        locked = false,
    },
    [2] = {
        id = 'CHAPTER_2',
        name = 'العدوى',
        description = 'تتبع مصدر الفيروس الغامض',
        levelRequired = 3,
        xpReward = 750,
        locked = true,
        unlocksAfter = 'CHAPTER_1',
    },
    [3] = {
        id = 'CHAPTER_3',
        name = 'المختبر',
        description = 'اختراق المختبر السري تحت الأرض',
        levelRequired = 5,
        xpReward = 1000,
        locked = true,
        unlocksAfter = 'CHAPTER_2',
    },
    [4] = {
        id = 'CHAPTER_4',
        name = 'المنطقة المحظورة',
        description = 'النفاذ إلى المنطقة المحظورة والبحث عن الحقيقة',
        levelRequired = 7,
        xpReward = 1500,
        locked = true,
        unlocksAfter = 'CHAPTER_3',
    },
    [5] = {
        id = 'CHAPTER_5',
        name = 'الحقيقة',
        description = 'كشف سر المؤامرة الخطيرة',
        levelRequired = 9,
        xpReward = 2000,
        locked = true,
        unlocksAfter = 'CHAPTER_4',
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- SAFE ZONES
-- ═══════════════════════════════════════════════════════════════════════════════

Config.SafeZones = {
    ['SAFE_ZONE_1'] = {
        name = 'غرفة الملجأ الآمن',
        coords = vector3(500.0, 200.0, 100.0),
        radius = 50.0,
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- ZONES
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Zones = {
    ['ZONE_01'] = {
        name = 'المنطقة المهجورة',
        coords = vector3(550.0, 250.0, 100.0),
        radius = 200.0,
        levelRequired = 1,
        chapter = 'CHAPTER_1',
        weather = 'CLEAR',
        ambientSound = 'ambient_wind',
        enemySpawns = { 'ENEMY_SPAWN_01', 'ENEMY_SPAWN_02' },
    },
    ['ZONE_02'] = {
        name = 'المختبر',
        coords = vector3(600.0, 300.0, 50.0),
        radius = 150.0,
        levelRequired = 3,
        chapter = 'CHAPTER_2',
        weather = 'CLEAR',
        ambientSound = 'ambient_lab',
        enemySpawns = { 'ENEMY_SPAWN_03' },
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- DOORS
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Doors = {
    ['LAB_DOOR_01'] = {
        name = 'باب المختبر الرئيسي',
        coords = vector3(600.0, 300.0, 50.0),
        heading = 0.0,
        model = 'prop_door_01',
        locked = true,
        requirements = {
            level = 3,
            keys = { 'lab_key' },
            puzzles = { 'PUZZLE_LAB_01' },
        },
        sounds = {
            unlock = 'door_unlock',
            lock = 'door_lock',
        },
        animation = {
            dict = 'anim@heists@keycard@',
            clip = 'pushbutton',
        },
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- KEYS
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Keys = {
    ['lab_key'] = {
        name = 'مفتاح المختبر',
        description = 'مفتاح معدني قديم',
        icon = 'key',
        rarity = 'legendary',
        chapter = 'CHAPTER_1',
        locationHint = 'داخل صندوق الأدوات في المستودع',
    },
    ['basement_key'] = {
        name = 'مفتاح القبو',
        description = 'مفتاح صدئ لقبو سري',
        icon = 'key_old',
        rarity = 'epic',
        chapter = 'CHAPTER_2',
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- ENEMIES
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Enemies = {
    ['TYPE_1'] = {
        name = 'مصاب بطيء',
        model = 'a_m_m_business_1',
        health = 50,
        damage = 5,
        speed = 10.0,
        detectionRange = 30.0,
        attackRange = 2.0,
        sounds = {
            idle = 'zombie_idle',
            alert = 'zombie_alert',
            attack = 'zombie_attack',
            death = 'zombie_death',
        },
    },
    ['TYPE_2'] = {
        name = 'مصاب سريع',
        model = 'a_m_m_business_2',
        health = 75,
        damage = 10,
        speed = 25.0,
        detectionRange = 50.0,
        attackRange = 2.5,
    },
    ['TYPE_3'] = {
        name = 'وحش قوي',
        model = 'a_m_m_business_3',
        health = 200,
        damage = 25,
        speed = 20.0,
        detectionRange = 80.0,
        attackRange = 3.0,
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- PUZZLES
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Puzzles = {
    ['PUZZLE_LAB_01'] = {
        name = 'لغز الرموز',
        description = 'ترتيب الرموز الصحيح',
        type = 'symbols', -- symbols, numbers, colors, sequence
        chapter = 'CHAPTER_1',
        levelRequired = 1,
        solution = { 1, 3, 2, 4 }, -- Correct order
        attempts = 3,
        rewards = {
            xp = 100,
            items = { 'lab_key' },
        },
        sounds = {
            success = 'puzzle_success',
            fail = 'puzzle_fail',
        },
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- MISSIONS
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Missions = {
    ['MISSION_SIGNAL'] = {
        id = 'MISSION_SIGNAL',
        name = 'الإشارة الغريبة',
        description = 'تم رصد إشارة غير معروفة في المنطقة الشمالية',
        chapter = 'CHAPTER_1',
        levelRequired = 1,
        npcStart = 'NPC_COMMANDER',
        objectives = {
            [1] = {
                description = 'توجه إلى موقع الإشارة',
                coords = vector3(550.0, 250.0, 100.0),
                radius = 30.0,
                type = 'reach_location',
            },
            [2] = {
                description = 'ابحث عن جهاز الراديو',
                coords = vector3(560.0, 260.0, 100.0),
                radius = 10.0,
                type = 'find_item',
                item = 'radio_broken',
            },
            [3] = {
                description = 'ابحث عن بطارية',
                coords = vector3(570.0, 270.0, 100.0),
                radius = 10.0,
                type = 'find_item',
                item = 'battery',
                puzzle = 'PUZZLE_LAB_01',
            },
            [4] = {
                description = 'شغل الراديو',
                coords = vector3(560.0, 260.0, 100.0),
                radius = 5.0,
                type = 'activate_object',
            },
        },
        rewards = {
            xp = 500,
            items = { 'evidence_tape' },
            money = 0,
            unlocksChapter = 'CHAPTER_2',
        },
        sounds = {
            start = 'mission_start',
            complete = 'mission_complete',
        },
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- NPC
-- ═══════════════════════════════════════════════════════════════════════════════

Config.NPCs = {
    ['NPC_COMMANDER'] = {
        name = 'القائد',
        model = 'a_m_m_business_1',
        coords = vector3(450.0, 150.0, 100.0),
        heading = 0.0,
        dialogue = {
            greeting = 'مرحبا، هل أنت هنا للتحقيق؟',
            mission = 'تم رصد إشارة غريبة. يجب عليك التحقق منها.',
            farewell = 'حظا موفقا.',
        },
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- AUDIO
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Audio = {
    explorationMusic = 'music_exploration',
    tensionMusic = 'music_tension',
    chaseMusic = 'music_chase',
    victoryMusic = 'music_victory',
    deathSound = 'sound_death',
    ambientSounds = {
        'ambient_wind',
        'ambient_creaks',
        'ambient_whispers',
        'ambient_radio',
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- FEAR SYSTEM
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Fear = {
    maxLevel = 100,
    increaseRate = 2.0, -- per second in danger
    decreaseRate = 0.5, -- per second in safety
    darknessPenalty = 15.0,
    monsterDetection = 30.0,
    effects = {
        musicIntensity = true,
        screenShake = true,
        vignette = true,
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- ADMIN
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Admin = {
    adminGroup = 'admin',
    commands = {
        reset = '/zxreset',
        setLevel = '/zxsetlevel',
        giveKey = '/zxgivekey',
        startMission = '/zxstartmission',
        setChapter = '/zxchapter',
        debug = '/zxdebug',
    },
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- DATABASE
-- ═══════════════════════════════════════════════════════════════════════════════

Config.Database = {
    host = 'localhost',
    user = 'root',
    password = '',
    database = 'fivem',
}

print('^2[ZX_Horror]^7 Configuration loaded successfully!')
