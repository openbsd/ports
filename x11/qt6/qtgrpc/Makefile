QT6NAME =	QtgRPC
COMMENT =	gRPC support for Qt6
PKGSPEC =	qt6-qtgrpc-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS +=  Qt6Grpc                   0.0 # 0.0
SHARED_LIBS +=  Qt6Protobuf               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network c m protobuf
WANTLIB += protoc

BUILD_DEPENDS =	graphics/glslang

LIB_DEPENDS =	devel/protobuf

.include <bsd.port.mk>
