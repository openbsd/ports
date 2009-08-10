# $OpenBSD: Makefile,v 1.14 2009/08/10 06:31:45 kili Exp $

COMMENT =		kde image plugins api
CATEGORIES =		graphics devel x11 x11/kde
V =			0.1.6
DISTNAME =		libkipi-$V
PKGNAME =		${DISTNAME}p0
SHARED_LIBS +=	kipi                 1.4      # .2.0
EXTRACT_SUFX =		.tar.bz2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY =		Yes
LIB_DEPENDS +=		lib/qt3/qt-mt.>=3.33::x11/qt3 \
			kdecore.>=6,kwalletclient,DCOP,kio,kdeui,kdefx,kdesu::x11/kde/libs3

WANTLIB =		ICE Xrender SM Xext X11 util m z \
			jpeg png art_lgpl_2 iconv idn \
			Xau Xdmcp fam intl rpcsvc stdc++ \
			pthread-stubs xcb

FLAVORS =	debug
MODULES =	x11/kde

USE_X11 =		Yes
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
AUTOCONF =		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS +=		LIBRESOLV=
SUBST_VARS +=		V

# GPL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

.include <bsd.port.mk>
