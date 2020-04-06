.class Lcom/hacker101/level11/PayloadRequest$1;
.super Ljava/lang/Object;
.source "PayloadRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hacker101/level11/PayloadRequest;-><init>(Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/hacker101/level11/PayloadRequest$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/hacker101/level11/PayloadRequest$1;->val$listener:Lcom/android/volley/Response$Listener;

    const-string v0, "Connection failed"

    invoke-interface {p1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
