.class public Lcom/android/internal/policy/impl/keyguard/ClockView2;
.super Landroid/widget/RelativeLayout;
.source "ClockView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ClockView2$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;,
        Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mhour1:I

.field private mhour2:I

.field mimages:[I

.field private mimageview1:Landroid/widget/ImageView;

.field private mimageview2:Landroid/widget/ImageView;

.field private mimageview3:Landroid/widget/ImageView;

.field private mimageview4:Landroid/widget/ImageView;

.field private mimageview5:Landroid/widget/ImageView;

.field private mminute1:I

.field private mminute2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAttached:I

    .line 66
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour1:I

    .line 68
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour2:I

    .line 69
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute1:I

    .line 70
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute2:I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimages:[I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mHandler:Landroid/os/Handler;

    .line 201
    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0xb9t 0x3t 0x8t 0x1t
        0xbat 0x3t 0x8t 0x1t
        0xbbt 0x3t 0x8t 0x1t
        0xbct 0x3t 0x8t 0x1t
        0xbdt 0x3t 0x8t 0x1t
        0xbet 0x3t 0x8t 0x1t
        0xbft 0x3t 0x8t 0x1t
        0xc0t 0x3t 0x8t 0x1t
        0xc1t 0x3t 0x8t 0x1t
        0xc2t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/ClockView2;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ClockView2;)Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->getAmPm()Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ClockView2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ClockView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->setDateFormat()V

    return-void
.end method

.method private getAmPm()Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 299
    .local v5, is24Format:Z
    if-eqz v5, :cond_3

    const v2, 0x1040031

    .line 302
    .local v2, fommatStringId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, format:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    if-nez v5, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;->setShowAmPm(Z)V

    .line 304
    const/4 v0, -0x1

    .line 305
    .local v0, a:I
    const/4 v6, 0x0

    .line 306
    .local v6, quoted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 308
    .local v1, c:C
    const/16 v7, 0x27

    if-ne v1, v7, :cond_0

    .line 309
    if-nez v6, :cond_5

    move v6, v8

    .line 311
    :cond_0
    :goto_3
    if-nez v6, :cond_6

    const/16 v7, 0x61

    if-ne v1, v7, :cond_6

    .line 312
    move v0, v4

    .line 316
    .end local v1           #c:C
    :cond_1
    if-nez v0, :cond_7

    .line 317
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    :cond_2
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 322
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormat:Ljava/lang/String;

    .line 323
    return-void

    .line 299
    .end local v0           #a:I
    .end local v2           #fommatStringId:I
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #quoted:Z
    :cond_3
    const v2, 0x1040030

    goto :goto_0

    .restart local v2       #fommatStringId:I
    .restart local v3       #format:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 303
    goto :goto_1

    .restart local v0       #a:I
    .restart local v1       #c:C
    .restart local v4       #i:I
    .restart local v6       #quoted:Z
    :cond_5
    move v6, v9

    .line 309
    goto :goto_3

    .line 306
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 318
    .end local v1           #c:C
    :cond_7
    if-lez v0, :cond_2

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 224
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAttached:I

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;-><init>(Lcom/android/internal/policy/impl/keyguard/ClockView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ClockView2$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/ClockView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->updateTime()V

    .line 245
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 251
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAttached:I

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 262
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 207
    const v0, 0x1020308

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview1:Landroid/widget/ImageView;

    .line 208
    const v0, 0x1020309

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview2:Landroid/widget/ImageView;

    .line 209
    const v0, 0x102030a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview3:Landroid/widget/ImageView;

    .line 210
    const v0, 0x102030b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview4:Landroid/widget/ImageView;

    .line 211
    const v0, 0x102030c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview5:Landroid/widget/ImageView;

    .line 214
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    .line 217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->setDateFormat()V

    .line 218
    return-void
.end method

.method public updateTime()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 273
    .local v0, is24Format:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour1:I

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    rem-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour2:I

    .line 286
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute1:I

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute2:I

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimages:[I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour1:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimages:[I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour2:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview4:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimages:[I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute1:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview5:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimages:[I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mminute2:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mimageview3:Landroid/widget/ImageView;

    const v3, 0x10803c3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;->setIsMorning(Z)V

    .line 295
    return-void

    .line 277
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    if-nez v2, :cond_1

    .line 278
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour1:I

    .line 279
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour2:I

    goto :goto_0

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour1:I

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mhour2:I

    goto/16 :goto_0

    .line 294
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->updateTime()V

    .line 268
    return-void
.end method
