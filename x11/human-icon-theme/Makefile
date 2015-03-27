# $OpenBSD: Makefile,v 1.12 2015/03/27 08:16:18 ajacoutot Exp $

COMMENT=		Human icon theme from Ubuntu

V=			0.36
DISTNAME=		human-icon-theme_${V}
PKGNAME=		human-icon-theme-${V}
REVISION=		2

CATEGORIES=		x11

HOMEPAGE=		https://launchpad.net/human-icon-theme

# Creative Commons Attribution-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://launchpad.net/ubuntu/oneiric/+source/human-icon-theme/${V}/+files/

WRKDIST=	${WRKDIR}/human-icon-theme
MODULES=	textproc/intltool

RUN_DEPENDS=	x11/gtk+3,-guic
BUILD_DEPENDS=	x11/icon-naming-utils

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=	x11/tangerine-icon-theme

NO_TEST=	Yes
ALL_TARGET=	build
USE_GMAKE=	Yes
PKG_ARCH=	*

pre-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
