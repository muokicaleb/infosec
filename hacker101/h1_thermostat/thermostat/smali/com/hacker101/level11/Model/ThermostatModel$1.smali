.class Lcom/hacker101/level11/Model/ThermostatModel$1;
.super Ljava/lang/Object;
.source "ThermostatModel.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hacker101/level11/Model/ThermostatModel;


# direct methods
.method constructor <init>(Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/hacker101/level11/Model/ThermostatModel$1;->this$0:Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hacker101/level11/Model/ThermostatModel$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
