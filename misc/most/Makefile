# $OpenBSD: Makefile,v 1.20 2015/04/25 21:56:38 rpe Exp $

PORTROACH=	limit:.*[^a]$$

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
