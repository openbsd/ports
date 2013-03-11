# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:16 espie Exp $

COMMENT=		Tangerine icon theme from Ubuntu

DISTNAME=		tangerine-icon-theme_0.26
PKGNAME=		${DISTNAME:S/_/-/}
REVISION=		6
CATEGORIES=		x11

MASTER_SITES=		http://archive.ubuntu.com/ubuntu/pool/main/t/tangerine-icon-theme/

# Creative Commons Attribution-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	textproc/intltool

WRKDIST=	${WRKDIR}/tangerine-icon-theme-0.26

RUN_DEPENDS=	x11/gtk+2,-guic

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/gnome/librsvg \
		graphics/ImageMagick \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/gnome/icon-theme

NO_TEST=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	gnu

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh


.include <bsd.port.mk>
