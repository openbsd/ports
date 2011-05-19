# $OpenBSD: Makefile,v 1.7 2011/05/19 14:43:16 ajacoutot Exp $

COMMENT=		Human icon theme from Ubuntu

DISTNAME=		human-icon-theme_0.33.6ubuntu2
PKGNAME=		human-icon-theme-0.33.6
REVISION=		3

CATEGORIES=		x11

MASTER_SITES=		http://archive.ubuntu.com/ubuntu/pool/main/h/human-icon-theme/

# Creative Commons Attribution-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/_/-/}
MODULES=	textproc/intltool

BUILD_DEPENDS=	x11/icon-naming-utils

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=	x11/tangerine-icon-theme

NO_REGRESS=	Yes
ALL_TARGET=	build
USE_GMAKE=	Yes
PKG_ARCH=	*

pre-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
