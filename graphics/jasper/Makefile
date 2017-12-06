# $OpenBSD: Makefile,v 1.22 2017/12/06 00:29:52 jca Exp $

COMMENT =	reference implementation of JPEG-2000

DISTNAME =	jasper-1.900.1
REVISION =	6
SHARED_LIBS =	jasper		2.1

CATEGORIES =	graphics
MASTER_SITES =	https://www.ece.uvic.ca/~frodo/jasper/software/
EXTRACT_SUFX =	.zip

HOMEPAGE =	https://www.ece.uvic.ca/~frodo/jasper/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c m

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-x \
			--disable-opengl
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/acaux

.include <bsd.port.mk>
