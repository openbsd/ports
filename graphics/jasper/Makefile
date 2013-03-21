# $OpenBSD: Makefile,v 1.16 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT =	reference implementation of JPEG-2000

DISTNAME =	jasper-1.900.1
REVISION =	1
SHARED_LIBS =	jasper		2.1

CATEGORIES =	graphics
MASTER_SITES =	${HOMEPAGE}software/
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://www.ece.uvic.ca/~mdadams/jasper/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c m

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-x \
			--disable-opengl
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/acaux

.include <bsd.port.mk>
