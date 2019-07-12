# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:46 sthen Exp $

COMMENT =	intelligent phonetic input method library

V =		0.5.1
DISTNAME =	libchewing-$V
PKGNAME =	zh-libchewing-$V
REVISION =	0

SHARED_LIBS =	chewing	0.1	# .3.3

CATEGORIES =	chinese inputmethods

HOMEPAGE =	http://chewing.im/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

WANTLIB +=	m pthread sqlite3 z

MASTER_SITES =	https://github.com/chewing/libchewing/releases/download/v$V/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS =	print/texinfo
LIB_DEPENDS =	databases/sqlite3

MAKE_FLAGS =	MAKEINFO=${LOCALBASE}/bin/gmakeinfo

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
