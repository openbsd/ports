# $OpenBSD: Makefile,v 1.17 2012/01/27 04:13:05 william Exp $

COMMENT=	browse or page through a text file

DISTNAME=	most-5.0.0a
REVISION=	0
CATEGORIES=	misc

MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/

LIB_DEPENDS=	devel/libslang

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m slang termcap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
