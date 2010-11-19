# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:12 espie Exp $

COMMENT=	browse or page through a text file

DISTNAME=	most-5.0.0a
CATEGORIES=	misc

MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/ \
		http://openbsd.rutgers.edu/

LIB_DEPENDS=	devel/libslang

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

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
