-- ╔═══════════════════════════════════════════════════════════════════════════════╗
-- ║              ZX HORROR - ARABIC LOCALIZATION                                   ║
-- ║              ترجمة ودعم اللغة العربية                                           ║
-- ╚═══════════════════════════════════════════════════════════════════════════════╝

Locale.New({
    ['en'] = 'Arabic',
    ['ar'] = 'العربية',
}, 'ar')

-- ═══════════════════════════════════════════════════════════════════════════════
-- GENERAL
-- ═══════════════════════════════════════════════════════════════════════════════

Locale:new({
    -- Levels
    ['level_1'] = 'مبتدئ',
    ['level_2'] = 'مستكشف',
    ['level_3'] = 'محقق',
    ['level_4'] = 'ناجٍ',
    ['level_5'] = 'متمرس',
    ['level_6'] = 'خبير',
    ['level_7'] = 'صياد',
    ['level_8'] = 'محارب',
    ['level_9'] = 'باحث مظلم',
    ['level_10'] = 'حاكم الظلام',

    -- Chapters
    ['chapter_1'] = 'الإشارة',
    ['chapter_2'] = 'العدوى',
    ['chapter_3'] = 'المختبر',
    ['chapter_4'] = 'المنطقة المحظورة',
    ['chapter_5'] = 'الحقيقة',

    -- UI
    ['level'] = 'المستوى',
    ['xp'] = 'نقاط الخبرة',
    ['chapter'] = 'الفصل',
    ['mission'] = 'المهمة',
    ['objectives'] = 'الأهداف',
    ['evidence'] = 'الأدلة',
    ['keys'] = 'المفاتيح',
    ['inventory'] = 'الحقيبة',
    ['stats'] = 'الإحصائيات',

    -- Mission
    ['mission_start'] = 'تم بدء المهمة',
    ['mission_complete'] = 'تم إكمال المهمة',
    ['mission_failed'] = 'فشلت المهمة',
    ['objective_complete'] = 'تم إكمال الهدف',

    -- Puzzles
    ['puzzle_solve'] = 'حل اللغز',
    ['puzzle_success'] = 'تم حل اللغز بنجاح!',
    ['puzzle_fail'] = 'فشلت في حل اللغز',
    ['attempts_remaining'] = 'محاولات متبقية: %d',

    -- Doors
    ['door_locked'] = 'الباب مقفول',
    ['door_requires_key'] = 'هذا الباب يحتاج مفتاح',
    ['door_requires_level'] = 'هذا الباب يحتاج مستوى أعلى',
    ['door_requires_puzzle'] = 'يجب حل اللغز أولاً',
    ['door_unlocked'] = 'تم فتح الباب',

    -- Keys
    ['key_found'] = 'تم العثور على مفتاح: %s',
    ['key_collected'] = 'تم جمع المفتاح',
    ['key_used'] = 'تم استخدام المفتاح',

    -- Enemies
    ['enemy_detected'] = 'تم اكتشاف تهديد!',
    ['enemy_nearby'] = 'هناك شيء قريب منك...',
    ['enemy_attack'] = 'تحت الهجوم!',
    ['enemy_killed'] = 'تم القضاء على العدو',

    -- Fear System
    ['fear_low'] = 'هادئ',
    ['fear_medium'] = 'متوتر',
    ['fear_high'] = 'مرعوب جداً',

    -- Notifications
    ['discovery'] = 'اكتشاف جديد',
    ['warning'] = 'تحذير',
    ['danger'] = 'خطر',
    ['safe'] = 'آمن',

    -- Radio Messages
    ['radio_message_1'] = 'إذا كنت تسمع هذه الرسالة... لا تذهب إلى المختبر',
    ['radio_message_2'] = 'العدوى تنتشر بسرعة',
    ['radio_message_3'] = 'يجب عليك الهروب من هنا',

    -- Chapter Descriptions
    ['chapter_1_desc'] = 'اكتشاف إشارة غريبة في المنطقة المهجورة',
    ['chapter_2_desc'] = 'تتبع مصدر الفيروس الغامض',
    ['chapter_3_desc'] = 'اختراق المختبر السري تحت الأرض',
    ['chapter_4_desc'] = 'النفاذ إلى المنطقة المحظورة والبحث عن الحقيقة',
    ['chapter_5_desc'] = 'كشف سر المؤامرة الخطيرة',

    -- Admin Commands
    ['admin_reset'] = 'تم إعادة تعيين بيانات اللاعب',
    ['admin_set_level'] = 'تم تعيين المستوى إلى: %d',
    ['admin_give_key'] = 'تم إعطاء المفتاح: %s',
    ['admin_start_mission'] = 'تم بدء المهمة: %s',
    ['admin_set_chapter'] = 'تم تعيين الفصل إلى: %s',
    ['admin_insufficient_perms'] = 'ليس لديك صلاحيات كافية',

    -- Errors
    ['error_no_player'] = 'لم يتم العثور على اللاعب',
    ['error_invalid_mission'] = 'مهمة غير صحيحة',
    ['error_database'] = 'خطأ في قاعدة البيانات',

}, 'ar')

Utils.Log('Arabic localization loaded', 'INFO')
