let project = new Project('haxebullet');

project.khabind({
    idlFile: "bullet.idl",
    nativeLib: "bullet",
    sourcesDir: "bullet",
    chopPrefix: "bt",
    autoGC: false,
    includes: [
        "<btBulletDynamicsCommon.h>",
        "<BulletSoftBody/btSoftBody.h>",
        "<BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h>",
        "<BulletSoftBody/btDefaultSoftBodySolver.h>",
        "<BulletSoftBody/btSoftBodyHelpers.h>",
        "<BulletSoftBody/btSoftRigidDynamicsWorld.h>",
        "<BulletCollision/CollisionShapes/btHeightfieldTerrainShape.h>",
        "<BulletCollision/CollisionDispatch/btGhostObject.h>",
        "<BulletDynamics/Character/btKinematicCharacterController.h>",
        "<BulletCollision/Gimpact/btGImpactShape.h>",
        "<BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h>"
    ],
    emccOptimizationLevel: "3",
    emccArgs: [
        "--llvm-lto 1",
        "-s NO_EXIT_RUNTIME=1",
        "-s NO_FILESYSTEM=1",
        "-s AGGRESSIVE_VARIABLE_ELIMINATION=1",
        "-s ELIMINATE_DUPLICATE_FUNCTIONS=1",
        "-s LEGACY_VM_SUPPORT=1",
        "-s NO_DYNAMIC_EXECUTION=1",
        "-s TOTAL_MEMORY=67108864"
    ]
});

resolve(project);
