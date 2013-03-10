# $OpenBSD: Makefile,v 1.16 2013/03/10 22:28:05 espie Exp $

COMMENT=	astronomical julian date calculator

DISTNAME=	jday-2.4
REVISION=	1
SHARED_LIBS +=  jday                 0.0      # .2.4
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

WANTLIB=	c

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
