# $OpenBSD: Makefile,v 1.10 2011/11/14 13:49:06 sthen Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.2.0
CATEGORIES=	devel lang
MASTER_SITES=	http://www.tortall.net/projects/yasm/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://yasm.tortall.net/

# BSD and Artistic/LGPLv2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MODULES=	devel/gettext

USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
