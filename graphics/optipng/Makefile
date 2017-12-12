# $OpenBSD: Makefile,v 1.4 2017/12/12 15:51:44 fcambus Exp $

COMMENT =		lossless PNG optimizer
DISTNAME =		optipng-0.7.6
REVISION =		0
CATEGORIES =		graphics

HOMEPAGE =		http://optipng.sourceforge.net/

MAINTAINER =		Kyle Isom <kyle@tyrfingr.is>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m png z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=optipng/}

LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	-with-system-zlib -with-system-libpng
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/optipng/optipng ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/optipng/man/optipng.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
