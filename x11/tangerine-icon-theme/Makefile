# $OpenBSD: Makefile,v 1.1.1.1 2009/06/03 22:27:47 landry Exp $

COMMENT=		Tangerine icon theme from Ubuntu

DISTNAME=		tangerine-icon-theme_0.26
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		x11

MASTER_SITES=		http://archive.ubuntu.com/ubuntu/pool/main/t/tangerine-icon-theme/

# Creative Commons Attribution-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	textproc/intltool

WRKDIST=	${WRKDIR}/tangerine-icon-theme-0.26

BUILD_DEPENDS=	::x11/icon-naming-utils \
		::x11/gnome/librsvg \
		::graphics/ImageMagick \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

NO_REGRESS=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	gnu

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh


.include <bsd.port.mk>
