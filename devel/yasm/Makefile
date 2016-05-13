# $OpenBSD: Makefile,v 1.15 2016/05/13 22:06:29 naddy Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.3.0
REVISION=	1
CATEGORIES=	devel lang
MASTER_SITES=	http://www.tortall.net/projects/yasm/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://yasm.tortall.net/

# BSD and Artistic/LGPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
# there are no translations yet
CONFIGURE_ARGS+=--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
