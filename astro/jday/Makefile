# $OpenBSD: Makefile,v 1.22 2019/07/12 20:43:31 sthen Exp $

COMMENT=	astronomical julian date calculator

DISTNAME=	jday-2.4
REVISION=	4
SHARED_LIBS +=  jday                 0.0      # .2.4
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
