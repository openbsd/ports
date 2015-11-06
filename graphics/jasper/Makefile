# $OpenBSD: Makefile,v 1.18 2015/11/06 22:28:29 sthen Exp $

COMMENT =	reference implementation of JPEG-2000

DISTNAME =	jasper-1.900.1
REVISION =	3
SHARED_LIBS =	jasper		2.1

CATEGORIES =	graphics
MASTER_SITES =	http://www.ece.uvic.ca/~mdadams/jasper/software/
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
