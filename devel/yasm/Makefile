# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:32 espie Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.2.0
CATEGORIES=	devel lang
MASTER_SITES=	http://www.tortall.net/projects/yasm/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://yasm.tortall.net/

# BSD and Artistic/LGPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MODULES=	devel/gettext

USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
