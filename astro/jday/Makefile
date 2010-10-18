# $OpenBSD: Makefile,v 1.12 2010/10/18 16:47:00 espie Exp $

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
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
