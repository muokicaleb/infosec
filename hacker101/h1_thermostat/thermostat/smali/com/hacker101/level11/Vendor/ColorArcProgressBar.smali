.class public Lcom/hacker101/level11/Vendor/ColorArcProgressBar;
.super Landroid/view/View;
.source "ColorArcProgressBar.java"


# instance fields
.field private final DEGREE_PROGRESS_DISTANCE:I

.field private allArcPaint:Landroid/graphics/Paint;

.field private aniSpeed:I

.field private bgArcColor:Ljava/lang/String;

.field private bgArcWidth:F

.field private bgRect:Landroid/graphics/RectF;

.field private centerX:F

.field private centerY:F

.field private colors:[I

.field private curSpeedPaint:Landroid/graphics/Paint;

.field private curSpeedSize:F

.field private curValues:F

.field private currentAngle:F

.field private degreePaint:Landroid/graphics/Paint;

.field private diameter:I

.field private hintColor:Ljava/lang/String;

.field private hintPaint:Landroid/graphics/Paint;

.field private hintSize:F

.field private hintString:Ljava/lang/String;

.field private isNeedContent:Z

.field private isNeedDial:Z

.field private isNeedTitle:Z

.field private isNeedUnit:Z

.field private isShowCurrentSpeed:Z

.field private k:F

.field private lastAngle:F

.field private longDegreeColor:Ljava/lang/String;

.field private longdegree:F

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mHeight:I

.field private mWidth:I

.field private maxValues:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressWidth:F

.field private rotateMatrix:Landroid/graphics/Matrix;

.field private shortDegreeColor:Ljava/lang/String;

.field private shortdegree:F

.field private startAngle:F

.field private sweepAngle:F

.field private sweepGradient:Landroid/graphics/SweepGradient;

.field private textSize:F

.field private titleString:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;

.field private vTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1f4

    .line 30
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    const/high16 p1, 0x43070000    # 135.0f

    .line 48
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->startAngle:F

    const/high16 p1, 0x43870000    # 270.0f

    .line 49
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    const/4 v1, 0x4

    .line 52
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->colors:[I

    const/high16 v1, 0x42700000    # 60.0f

    .line 53
    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    .line 54
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 55
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 56
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    .line 57
    invoke-direct {p0, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 58
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintSize:F

    const/high16 p1, 0x41500000    # 13.0f

    .line 59
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedSize:F

    const/16 v1, 0x3e8

    .line 60
    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->aniSpeed:I

    .line 61
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 62
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortdegree:F

    const/high16 p1, 0x41000000    # 8.0f

    .line 63
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    const-string p1, "#FFFFFF"

    .line 65
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintColor:Ljava/lang/String;

    const-string p1, "#111111"

    .line 66
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    const-string p1, "#111111"

    .line 67
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortDegreeColor:Ljava/lang/String;

    const-string p1, "#111111"

    .line 68
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcColor:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isShowCurrentSpeed:Z

    .line 85
    invoke-direct {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->initView()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1f4

    .line 30
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    const/high16 v0, 0x43070000    # 135.0f

    .line 48
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->startAngle:F

    const/high16 v0, 0x43870000    # 270.0f

    .line 49
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    const/4 v1, 0x4

    .line 52
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->colors:[I

    const/high16 v1, 0x42700000    # 60.0f

    .line 53
    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    .line 54
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 55
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 56
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    .line 57
    invoke-direct {p0, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 58
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintSize:F

    const/high16 v0, 0x41500000    # 13.0f

    .line 59
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedSize:F

    const/16 v1, 0x3e8

    .line 60
    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->aniSpeed:I

    .line 61
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 62
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortdegree:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 63
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    const-string v0, "#FFFFFF"

    .line 65
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintColor:Ljava/lang/String;

    const-string v0, "#111111"

    .line 66
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    const-string v0, "#111111"

    .line 67
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortDegreeColor:Ljava/lang/String;

    const-string v0, "#111111"

    .line 68
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isShowCurrentSpeed:Z

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->initCofig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    invoke-direct {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->initView()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x1f4

    .line 30
    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    const/high16 p3, 0x43070000    # 135.0f

    .line 48
    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->startAngle:F

    const/high16 p3, 0x43870000    # 270.0f

    .line 49
    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    const/4 p3, 0x0

    .line 50
    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    const/4 v0, 0x4

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->colors:[I

    const/high16 v0, 0x42700000    # 60.0f

    .line 53
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    .line 54
    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 55
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    const/high16 p3, 0x41200000    # 10.0f

    .line 56
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    .line 57
    invoke-direct {p0, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    const/high16 p3, 0x41700000    # 15.0f

    .line 58
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintSize:F

    const/high16 p3, 0x41500000    # 13.0f

    .line 59
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedSize:F

    const/16 v0, 0x3e8

    .line 60
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->aniSpeed:I

    .line 61
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    const/high16 p3, 0x40a00000    # 5.0f

    .line 62
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortdegree:F

    const/high16 p3, 0x41000000    # 8.0f

    .line 63
    invoke-direct {p0, p3}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p3

    iput p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    const-string p3, "#FFFFFF"

    .line 65
    iput-object p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintColor:Ljava/lang/String;

    const-string p3, "#111111"

    .line 66
    iput-object p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    const-string p3, "#111111"

    .line 67
    iput-object p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortDegreeColor:Ljava/lang/String;

    const-string p3, "#111111"

    .line 68
    iput-object p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcColor:Ljava/lang/String;

    const/4 p3, 0x0

    .line 71
    iput-object p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isShowCurrentSpeed:Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->initCofig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-direct {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->initView()V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
        -0x10000
    .end array-data
.end method

.method static synthetic access$000(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    return p0
.end method

.method static synthetic access$002(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    return p1
.end method

.method static synthetic access$102(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    return p1
.end method

.method static synthetic access$200(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->k:F

    return p0
.end method

.method private dipToPx(F)I
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private getScreenWidth()I
    .locals 2

    .line 421
    invoke-virtual {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 422
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 423
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 424
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initCofig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 107
    sget-object v0, Lcom/hacker101/level11/R$styleable;->ColorArcProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    const v0, -0xff0100

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 v0, 0x7

    .line 109
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v1, 0x8

    .line 110
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x4

    .line 111
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 p2, 0x1

    aput v0, v3, p2

    const/4 p2, 0x2

    aput v1, v3, p2

    const/4 v0, 0x3

    aput v1, v3, v0

    iput-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->colors:[I

    .line 113
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcColor:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortDegreeColor:Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0x10e

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 118
    invoke-direct {p0, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 119
    invoke-direct {p0, p2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p2

    int-to-float p2, p2

    const/16 v1, 0x9

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    const/16 p2, 0xc

    .line 120
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedTitle:Z

    const/16 p2, 0xa

    .line 121
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedContent:Z

    const/16 p2, 0xd

    .line 122
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedUnit:Z

    const/16 p2, 0xb

    .line 123
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedDial:Z

    const/16 p2, 0x10

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintString:Ljava/lang/String;

    const/16 p2, 0xf

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->titleString:Ljava/lang/String;

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    const/16 p2, 0xe

    const/high16 v0, 0x42700000    # 60.0f

    .line 127
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    .line 128
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    const/4 p2, 0x5

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    .line 132
    :cond_0
    iget p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    invoke-virtual {p0, p2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setCurrentValues(F)V

    .line 133
    iget p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    invoke-virtual {p0, p2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setMaxValues(F)V

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 10

    .line 147
    invoke-direct {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgRect:Landroid/graphics/RectF;

    .line 150
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float/2addr v5, v2

    iget v6, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    int-to-float v7, v6

    add-float/2addr v5, v7

    iput v5, v0, Landroid/graphics/RectF;->top:F

    div-float v5, v3, v4

    add-float/2addr v5, v2

    int-to-float v7, v6

    add-float/2addr v5, v7

    .line 151
    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 152
    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    int-to-float v7, v5

    div-float v8, v3, v4

    add-float/2addr v8, v2

    int-to-float v9, v6

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v5

    div-float v8, v3, v4

    add-float/2addr v8, v2

    int-to-float v9, v6

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 153
    iput v7, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v2, v4

    add-float/2addr v0, v3

    int-to-float v7, v5

    add-float/2addr v0, v7

    mul-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v0, v7

    div-float/2addr v0, v4

    .line 156
    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    int-to-float v0, v5

    add-float/2addr v2, v0

    mul-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    add-float/2addr v2, v0

    div-float/2addr v2, v4

    .line 157
    iput v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 176
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 191
    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 200
    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 206
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 207
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->colors:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepGradient:Landroid/graphics/SweepGradient;

    .line 208
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->rotateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setAnimation(FFI)V
    .locals 2

    const/4 v0, 0x2

    .line 390
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 391
    iget-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 392
    iget-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;

    invoke-direct {p2, p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;-><init>(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 401
    iget-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setIsNeedDial(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedDial:Z

    return-void
.end method

.method private setIsNeedTitle(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedTitle:Z

    return-void
.end method

.method private setIsNeedUnit(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedUnit:Z

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->titleString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 215
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 217
    iget-boolean v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedDial:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x28

    if-ge v0, v3, :cond_2

    const/16 v3, 0xf

    const/high16 v4, 0x41100000    # 9.0f

    if-le v0, v3, :cond_0

    const/16 v3, 0x19

    if-ge v0, v3, :cond_0

    .line 221
    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_2

    .line 224
    :cond_0
    rem-int/lit8 v3, v0, 0x5

    if-nez v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longDegreeColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget v9, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    div-float v8, v7, v2

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    int-to-float v10, v8

    sub-float v10, v6, v10

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v7, v2

    sub-float/2addr v3, v7

    int-to-float v5, v8

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    sub-float/2addr v3, v5

    iget-object v11, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    move v8, v10

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {p0, v5}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortDegreeColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget v9, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    div-float v8, v7, v2

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    int-to-float v10, v8

    sub-float/2addr v6, v10

    iget v10, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    iget v11, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->shortdegree:F

    sub-float v12, v10, v11

    div-float/2addr v12, v2

    sub-float v12, v6, v12

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v7, v2

    sub-float/2addr v3, v7

    int-to-float v5, v8

    sub-float/2addr v3, v5

    sub-float/2addr v10, v11

    div-float/2addr v10, v2

    sub-float/2addr v3, v10

    sub-float v10, v3, v11

    iget-object v11, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->degreePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    move v8, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    :goto_1
    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->startAngle:F

    iget v6, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->allArcPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->rotateMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x43020000    # 130.0f

    iget v4, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 245
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepGradient:Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 246
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    iget-object v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->startAngle:F

    iget v7, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    iget-boolean v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedContent:Z

    const/high16 v3, 0x40400000    # 3.0f

    if-eqz v0, :cond_3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.0f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v4, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->vTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :cond_3
    iget-boolean v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedUnit:Z

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintString:Ljava/lang/String;

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v4, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    mul-float v5, v5, v2

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    :cond_4
    iget-boolean v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->isNeedTitle:Z

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->titleString:Ljava/lang/String;

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerX:F

    iget v4, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->centerY:F

    iget v5, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    mul-float v5, v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curSpeedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 140
    iget p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->longdegree:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, p1, p2

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    int-to-float v3, v2

    add-float/2addr v0, v3

    iget v3, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->DEGREE_PROGRESS_DISTANCE:I

    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    mul-float p1, p1, p2

    add-float/2addr p1, v1

    int-to-float p2, v2

    add-float/2addr p1, p2

    mul-int/lit8 v3, v3, 0x2

    int-to-float p2, v3

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 142
    invoke-virtual {p0, v0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBgArcWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 298
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->bgArcWidth:F

    return-void
.end method

.method public setCurrentValues(F)V
    .locals 2

    .line 281
    iget v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 287
    :cond_1
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->curValues:F

    .line 288
    iget v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->currentAngle:F

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->lastAngle:F

    .line 289
    iget v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->lastAngle:F

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->k:F

    mul-float p1, p1, v1

    iget v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->aniSpeed:I

    invoke-direct {p0, v0, p1, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setAnimation(FFI)V

    return-void
.end method

.method public setDiameter(I)V
    .locals 0

    int-to-float p1, p1

    .line 344
    invoke-direct {p0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->dipToPx(F)I

    move-result p1

    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->diameter:I

    return-void
.end method

.method public setHintSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 325
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintSize:F

    return-void
.end method

.method public setMaxValues(F)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->maxValues:F

    .line 272
    iget v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->sweepAngle:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->k:F

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 307
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->progressWidth:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 316
    iput p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->textSize:F

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->hintString:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->invalidate()V

    return-void
.end method
