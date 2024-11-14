COMMENT =	libraries implementing fd.o specifications

V =		v0.1.3
DISTNAME =	libsfdo-${V}
PKGNAME =	libsfdo-${V:S/v//}

SHARED_LIBS +=	sfdo-basedir		0.0 # 0.0
SHARED_LIBS +=	sfdo-desktop-file	0.0 # 0.0
SHARED_LIBS +=	sfdo-desktop		0.0 # 0.0
SHARED_LIBS +=	sfdo-icon		0.0 # 0.0

CATEGORIES =	sysutils

HOMEPAGE =	https://gitlab.freedesktop.org/vyivel/libsfdo
SITES =		${HOMEPAGE}/-/archive/${V}/

# BSD-2
PERMIT_PACKAGE=	Yes

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

.include <bsd.port.mk>
