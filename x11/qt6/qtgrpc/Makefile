QT6NAME =	QtgRPC
COMMENT =	gRPC support for Qt6
PKGSPEC =	qt6-qtgrpc-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Grpc                   1.0 # 0.0
SHARED_LIBS +=  Qt6Protobuf               0.1 # 0.0
SHARED_LIBS +=  Qt6ProtobufQtCoreTypes    0.0 # 0.0
SHARED_LIBS +=  Qt6ProtobufQtGuiTypes     0.0 # 0.0
SHARED_LIBS +=  Qt6ProtobufWellKnownTypes 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network absl_bad_optional_access

BUILD_DEPENDS =	graphics/glslang

LIB_DEPENDS =	devel/protobuf \
		devel/abseil-cpp

.include <bsd.port.mk>
