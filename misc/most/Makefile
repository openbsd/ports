# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:51 sthen Exp $

PORTROACH=	skipv:5.0.0

COMMENT=	browse or page through a text file

DISTNAME=	most-5.0.0a
REVISION=	1
CATEGORIES=	misc

MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m slang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

NO_TEST=	Yes

.include <bsd.port.mk>
