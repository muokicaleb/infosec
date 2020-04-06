.class public Lcom/hacker101/level11/Model/ThermostatModel;
.super Landroidx/lifecycle/ViewModel;
.source "ThermostatModel.java"


# instance fields
.field private currentTemperature:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isCooling:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private targetTemperature:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->currentTemperature:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->isCooling:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private updateCooling()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->currentTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/hacker101/level11/Model/ThermostatModel;->currentTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/hacker101/level11/Model/ThermostatModel;->isCooling:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hacker101/level11/Model/ThermostatModel;->isCooling:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/hacker101/level11/Model/ThermostatModel;->isCooling:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public decreaseTemperature()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public getCurrentTemperature()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->currentTemperature:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIsCooling()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->isCooling:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTargetTemperature()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public increaseTemperature()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setCurrentTemperature(Ljava/lang/Integer;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->currentTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lcom/hacker101/level11/Model/ThermostatModel;->updateCooling()V

    return-void
.end method

.method public setTargetTemperature(Ljava/lang/Integer;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/hacker101/level11/Model/ThermostatModel;->targetTemperature:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cmd"

    const-string v2, "setTemp"

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "temp"

    .line 42
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    sget-object p1, Lcom/hacker101/level11/ThermostatActivity;->volleyQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/hacker101/level11/PayloadRequest;

    new-instance v2, Lcom/hacker101/level11/Model/ThermostatModel$1;

    invoke-direct {v2, p0}, Lcom/hacker101/level11/Model/ThermostatModel$1;-><init>(Lcom/hacker101/level11/Model/ThermostatModel;)V

    invoke-direct {v1, v0, v2}, Lcom/hacker101/level11/PayloadRequest;-><init>(Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;)V

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    invoke-direct {p0}, Lcom/hacker101/level11/Model/ThermostatModel;->updateCooling()V

    return-void
.end method
