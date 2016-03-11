# $OpenBSD: Makefile,v 1.21 2016/03/11 20:28:26 naddy Exp $

COMMENT =	reference implementation of JPEG-2000

DISTNAME =	jasper-1.900.1
REVISION =	5
SHARED_LIBS =	jasper		2.1

CATEGORIES =	graphics
MASTER_SITES =	http://www.ece.uvic.ca/~mdadams/jasper/software/
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://www.ece.uvic.ca/~mdadams/jasper/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c m

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-x \
			--disable-opengl
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/acaux

.include <bsd.port.mk>
