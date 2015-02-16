# $OpenBSD: Makefile,v 1.19 2015/02/16 22:57:10 naddy Exp $

COMMENT=	browse or page through a text file

DISTNAME=	most-5.0.0a
REVISION=	0
CATEGORIES=	misc

MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m slang termcap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

NO_TEST=	Yes

.include <bsd.port.mk>
