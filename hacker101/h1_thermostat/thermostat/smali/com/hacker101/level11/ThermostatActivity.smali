.class public Lcom/hacker101/level11/ThermostatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThermostatActivity.java"


# static fields
.field public static volleyQueue:Lcom/android/volley/RequestQueue;


# instance fields
.field private minusBtn:Landroid/widget/ImageButton;

.field private plusBtn:Landroid/widget/ImageButton;

.field private tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field private thermostatContainer:Landroid/widget/LinearLayout;

.field private thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

.field private thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatContainer:Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->minusBtn:Landroid/widget/ImageButton;

    .line 25
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->plusBtn:Landroid/widget/ImageButton;

    .line 26
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 27
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    .line 28
    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    return-void
.end method

.method private bindViews()V
    .locals 1

    const v0, 0x7f090024

    .line 49
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->minusBtn:Landroid/widget/ImageButton;

    const v0, 0x7f090025

    .line 50
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->plusBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0900a5

    .line 51
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const v0, 0x7f0900b0

    .line 52
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    const v0, 0x7f0900b1

    .line 53
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    const v0, 0x7f0900af

    .line 54
    invoke-virtual {p0, v0}, Lcom/hacker101/level11/ThermostatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private configureListeners(Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->minusBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$YNSezW_w6jSukQIWmXxPKVVDSxM;

    invoke-direct {v1, p1}, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$YNSezW_w6jSukQIWmXxPKVVDSxM;-><init>(Lcom/hacker101/level11/Model/ThermostatModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->plusBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$m7kk1qENNp440kwGKDpXO2n-jEo;

    invoke-direct {v1, p1}, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$m7kk1qENNp440kwGKDpXO2n-jEo;-><init>(Lcom/hacker101/level11/Model/ThermostatModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    new-instance v1, Lcom/hacker101/level11/ThermostatActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/hacker101/level11/ThermostatActivity$1;-><init>(Lcom/hacker101/level11/ThermostatActivity;Lcom/hacker101/level11/Model/ThermostatModel;)V

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method

.method static synthetic lambda$configureListeners$0(Lcom/hacker101/level11/Model/ThermostatModel;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/hacker101/level11/Model/ThermostatModel;->decreaseTemperature()V

    return-void
.end method

.method static synthetic lambda$configureListeners$1(Lcom/hacker101/level11/Model/ThermostatModel;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/hacker101/level11/Model/ThermostatModel;->increaseTemperature()V

    return-void
.end method

.method public static synthetic lambda$observeModel$2(Lcom/hacker101/level11/ThermostatActivity;Ljava/lang/Integer;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setCurrentValues(F)V

    .line 82
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setCurrentValues(F)V

    .line 83
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/hacker101/level11/ThermostatActivity;->tempSlider:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$observeModel$3(Lcom/hacker101/level11/ThermostatActivity;Ljava/lang/Boolean;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/hacker101/level11/ThermostatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f05002c

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f07005d

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 92
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/hacker101/level11/ThermostatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f05002d

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f07005e

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 97
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCooling:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1, v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity;->thermostatCoolingOff:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private observeModel(Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Lcom/hacker101/level11/Model/ThermostatModel;->getTargetTemperature()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$EzfQHoZlaSFFzTvTiyI-KtNP3F0;

    invoke-direct {v1, p0}, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$EzfQHoZlaSFFzTvTiyI-KtNP3F0;-><init>(Lcom/hacker101/level11/ThermostatActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 88
    invoke-virtual {p1}, Lcom/hacker101/level11/Model/ThermostatModel;->getIsCooling()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$ixDilyP376sX8BHFc11MdWlsVjQ;

    invoke-direct {v0, p0}, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$ixDilyP376sX8BHFc11MdWlsVjQ;-><init>(Lcom/hacker101/level11/ThermostatActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setDefaults(Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x4d

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V

    const/16 v0, 0x4c

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setCurrentTemperature(Ljava/lang/Integer;)V

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cmd"

    const-string v2, "getTemp"

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    sget-object v1, Lcom/hacker101/level11/ThermostatActivity;->volleyQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/hacker101/level11/PayloadRequest;

    new-instance v3, Lcom/hacker101/level11/ThermostatActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/hacker101/level11/ThermostatActivity$2;-><init>(Lcom/hacker101/level11/ThermostatActivity;Lcom/hacker101/level11/Model/ThermostatModel;)V

    invoke-direct {v2, v0, v3}, Lcom/hacker101/level11/PayloadRequest;-><init>(Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    sput-object p1, Lcom/hacker101/level11/ThermostatActivity;->volleyQueue:Lcom/android/volley/RequestQueue;

    const p1, 0x7f0c001c

    .line 37
    invoke-virtual {p0, p1}, Lcom/hacker101/level11/ThermostatActivity;->setContentView(I)V

    .line 38
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/hacker101/level11/Model/ThermostatModel;

    .line 39
    invoke-direct {p0}, Lcom/hacker101/level11/ThermostatActivity;->bindViews()V

    .line 40
    invoke-direct {p0, p1}, Lcom/hacker101/level11/ThermostatActivity;->configureListeners(Lcom/hacker101/level11/Model/ThermostatModel;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/hacker101/level11/ThermostatActivity;->observeModel(Lcom/hacker101/level11/Model/ThermostatModel;)V

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hacker101/level11/ThermostatActivity;->setDefaults(Lcom/hacker101/level11/Model/ThermostatModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
