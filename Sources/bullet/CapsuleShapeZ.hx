package bullet;

#if hl
abstract CapsuleShapeZ(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCapsuleShapeZ_new2")
    static function new2(radius:Single, height:Single):CapsuleShapeZ return null;
    public inline function new(radius:Single, height:Single):Void this = new2(cast radius, cast height);
    @:hlNative("bullet", "btCapsuleShapeZ_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btCapsuleShapeZ_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btCapsuleShapeZ_delete")
    public function delete():Void { }
    @:to
    inline function _toCapsuleShape():CapsuleShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract CapsuleShapeZ(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new2(radius:Float, height:Float):CapsuleShapeZ return untyped bullet._eb_btCapsuleShapeZ_new2(radius, height);
    public inline function new(radius:Float, height:Float):Void this = new2(cast radius, cast height);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btCapsuleShapeZ_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btCapsuleShapeZ_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btCapsuleShapeZ_delete(this);
    @:to
    inline function _toCapsuleShape():CapsuleShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
