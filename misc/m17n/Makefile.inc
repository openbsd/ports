# $OpenBSD: Makefile.inc,v 1.1.1.1 2019/03/26 16:46:59 sthen Exp $

M17N_V =	1.8.0

CATEGORIES ?=	misc

HOMEPAGE ?=	https://www.nongnu.org/m17n/
MAINTAINER ?=	Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=	${MASTER_SITE_SAVANNAH:=m17n/}

USE_GMAKE ?=		Yes
CONFIGURE_STYLE ?=	gnu
