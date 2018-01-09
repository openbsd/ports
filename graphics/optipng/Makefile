# $OpenBSD: Makefile,v 1.5 2018/01/09 10:42:52 fcambus Exp $

COMMENT =		lossless PNG optimizer
DISTNAME =		optipng-0.7.7
CATEGORIES =		graphics

HOMEPAGE =		http://optipng.sourceforge.net/

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

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
