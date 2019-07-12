# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:04 sthen Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.3.0
REVISION=	1
CATEGORIES=	devel lang
MASTER_SITES=	https://www.tortall.net/projects/yasm/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://yasm.tortall.net/

# BSD and Artistic/LGPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
# there are no translations yet
CONFIGURE_ARGS+=--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
