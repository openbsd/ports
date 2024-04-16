COMMENT =	intelligent phonetic input method library

V =		0.7.0
DISTNAME =	libchewing-$V
PKGNAME =	zh-libchewing-$V

SHARED_LIBS =	chewing	0.2	# .3.3.1

CATEGORIES =	chinese inputmethods

HOMEPAGE =	http://chewing.im/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

WANTLIB +=	c sqlite3

SITES =		https://github.com/chewing/libchewing/releases/download/v$V/

EXTRACT_SUFX =	.tar.zst

MODULES =	devel/cmake
LIB_DEPENDS =	databases/sqlite3

CFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =      -L${LOCALBASE}/lib -lc

.include <bsd.port.mk>
