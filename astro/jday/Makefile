# $OpenBSD: Makefile,v 1.11 2007/09/15 10:37:21 ajacoutot Exp $

COMMENT=	astronomical julian date calculator

DISTNAME=	jday-2.4
SHARED_LIBS +=  jday                 0.0      # .2.4
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

WANTLIB=	c

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
