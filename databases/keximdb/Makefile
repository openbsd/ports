# $OpenBSD: Makefile,v 1.16 2014/07/11 15:46:31 zhuk Exp $

CATEGORIES=	databases x11 x11/kde
COMMENT=	MDB (access) file migration driver for kexi

VERSION=	1.6.1
MASTER_SITES=	${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}
DISTNAME=	keximdb-1.1.0
DIST_SUBDIR=	kde
REVISION=	10
HOMEPAGE=	http://www.kexi-project.org/wiki/wikiview/index.php?MDBDriver

SHARED_ONLY=	Yes

MODULES=		devel/gettext \
			x11/kde
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} \
			--with-kexidb-libraries=${LOCALBASE}/lib
USE_GMAKE=		Yes
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
WANTLIB += pcre xcb
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm expat fontconfig freetype lcms mdb mng
WANTLIB += ${KDE}/kdecore>=7 ${KDE}/DCOP ${KDE}/kabc ${KDE}/kdefx
WANTLIB += ${KDE}/kdeprint ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kparts
WANTLIB += ${KDE}/kutils ${KDE}/kwalletclient ${KDE}/kio ${KDE}/kmdi
WANTLIB += ${KDE}/knewstuff ${KDE}/kresources ${KDE}/ktexteditor
WANTLIB += ${KDE}/vcard ${KDE}/kofficecore>=3 ${KDE}/kexicore
WANTLIB += ${KDE}/kexidatatable ${KDE}/kexidb ${KDE}/kexidbparser
WANTLIB += ${KDE}/kexiextendedwidgets ${KDE}/kexiguiutils ${KDE}/keximain
WANTLIB += ${KDE}/keximigrate ${KDE}/kexiutils ${KDE}/kofficeui
WANTLIB += ${KDE}/koproperty ${KDE}/kowmf ${KDE}/kstore ${KDE}/kwmf

.include <bsd.port.mk>
