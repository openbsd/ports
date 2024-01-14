COMMENT =	UDisks2 service implementation for OpenBSD

DIST_TUPLE=	github sizeofvoid openbsdisks2 v0.5.0 .

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/sizeofvoid/openbsdisks2

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =	base-clang ports-gcc

# uses unveil()
WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus c m util

MODULES =	devel/cmake \
		x11/qt6

# /usr/local/share/dbus-1/system-services
RUN_DEPENDS +=	x11/dbus,-suid

.include <bsd.port.mk>
