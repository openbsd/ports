# $OpenBSD: Makefile,v 1.25 2021/10/22 11:45:46 fcambus Exp $

COMMENT=	browse or page through a text file

DISTNAME=	most-5.1.0
CATEGORIES=	misc
REVISION=	0

HOMEPAGE=	https://www.jedsoft.org/most/

MASTER_SITES=	https://www.jedsoft.org/releases/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m slang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

NO_TEST=	Yes

.include <bsd.port.mk>
