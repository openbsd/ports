# $OpenBSD: Makefile,v 1.14 2016/05/05 21:44:55 naddy Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-1.3.0
REVISION=	0
CATEGORIES=	devel lang
MASTER_SITES=	http://www.tortall.net/projects/yasm/releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://yasm.tortall.net/

# BSD and Artistic/LGPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
