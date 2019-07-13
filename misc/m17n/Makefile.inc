# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:27 sthen Exp $

M17N_V =	1.8.0

CATEGORIES ?=	misc

HOMEPAGE ?=	https://www.nongnu.org/m17n/
MAINTAINER ?=	Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=	${MASTER_SITE_SAVANNAH:=m17n/}

USE_GMAKE ?=		Yes
CONFIGURE_STYLE ?=	gnu
