# $OpenBSD: Makefile,v 1.24 2019/09/22 09:20:44 fcambus Exp $

COMMENT=	browse or page through a text file

DISTNAME=	most-5.1.0
CATEGORIES=	misc

MASTER_SITES=	https://www.jedsoft.org/releases/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m slang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

NO_TEST=	Yes

.include <bsd.port.mk>
