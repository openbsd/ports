# $OpenBSD: Makefile,v 1.8 2010/10/18 21:50:38 sthen Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.1.0
CATEGORIES=	devel lang
MASTER_SITES=	${HOMEPAGE}/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://www.tortall.net/projects/yasm/

# Yasm's license is BSD-style, with some
# portions (currently) under the LGPL.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
