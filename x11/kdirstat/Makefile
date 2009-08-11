# $OpenBSD: Makefile,v 1.18 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	graphical disk usage utility for KDE

DISTNAME=	kdirstat-2.4.0
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam
WANTLIB += idn jpeg m png pthread rpcsvc stdc++ util z
WANTLIB += pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	kdecore.>=6,DCOP,kdesu,kdeui,kio,kdefx,kwalletclient::x11/kde/libs3

MODULES=	devel/gettext \
		x11/kde

# catch $HOME/.kde/share/config
# that meinproc creates during build.
PORTHOME=	${WRKDIR}

MAKE_ENV=	${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.57
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	 ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
MODKDE_VERSION=	3.1

.include <bsd.port.mk>
