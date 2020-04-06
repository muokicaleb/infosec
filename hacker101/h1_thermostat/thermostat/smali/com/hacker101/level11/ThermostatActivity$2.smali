.class Lcom/hacker101/level11/ThermostatActivity$2;
.super Ljava/lang/Object;
.source "ThermostatActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hacker101/level11/ThermostatActivity;->setDefaults(Lcom/hacker101/level11/Model/ThermostatModel;)V
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
.field final synthetic this$0:Lcom/hacker101/level11/ThermostatActivity;

.field final synthetic val$model:Lcom/hacker101/level11/Model/ThermostatModel;


# direct methods
.method constructor <init>(Lcom/hacker101/level11/ThermostatActivity;Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/hacker101/level11/ThermostatActivity$2;->this$0:Lcom/hacker101/level11/ThermostatActivity;

    iput-object p2, p0, Lcom/hacker101/level11/ThermostatActivity$2;->val$model:Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hacker101/level11/ThermostatActivity$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity$2;->val$model:Lcom/hacker101/level11/Model/ThermostatModel;

    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V

    .line 112
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity$2;->val$model:Lcom/hacker101/level11/Model/ThermostatModel;

    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hacker101/level11/Model/ThermostatModel;->setCurrentTemperature(Ljava/lang/Integer;)V

    return-void
.end method
