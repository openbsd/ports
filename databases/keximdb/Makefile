# $OpenBSD: Makefile,v 1.12 2013/06/02 19:41:57 zhuk Exp $

CATEGORIES=	databases x11 x11/kde
COMMENT=	MDB (access) file migration driver for kexi

VERSION=	1.6.1
MASTER_SITES=	${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}
DISTNAME=	keximdb-1.1.0
DIST_SUBDIR=	kde
REVISION=	6
HOMEPAGE=	http://www.kexi-project.org/wiki/wikiview/index.php?MDBDriver

SHARED_ONLY=	Yes

MODULES=		devel/gettext \
			x11/kde
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} \
			--with-kexidb-libraries=${LOCALBASE}/lib
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=

PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS +=	x11/kde/libs3 \
		x11/kde/office3 \
		databases/mdbtools/snapshot

WANTLIB += ICE SM X11 Xext Xrender jpeg m png
WANTLIB += stdc++ util z art_lgpl_2 glib-2.0 idn
WANTLIB += pcre xcb kdecore>=7 DCOP kabc kdefx
WANTLIB += kdeprint kdesu kdeui kparts kutils kwalletclient kio
WANTLIB += kmdi knewstuff kresources ktexteditor vcard kofficecore>=3
WANTLIB += kexicore kexidatatable kexidb kexidbparser kexiextendedwidgets
WANTLIB += kexiguiutils keximain keximigrate kexiutils kofficeui
WANTLIB += koproperty kowmf kstore kwmf mdb
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm expat fontconfig freetype lcms mng

.include <bsd.port.mk>
