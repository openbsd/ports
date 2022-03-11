COMMENT =	UDisks2 service implementation for OpenBSD

V =		0.3.1
DISTNAME =	openbsdisks2-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/sizeofvoid/openbsdisks2

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus c m util

MASTER_SITES =	https://github.com/sizeofvoid/openbsdisks2/releases/download/v${V}/

MODULES =	devel/cmake \
		x11/qt5

# /usr/local/share/dbus-1/system-services
RUN_DEPENDS +=	x11/dbus,-suid

.include <bsd.port.mk>
