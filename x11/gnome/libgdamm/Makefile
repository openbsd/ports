# $OpenBSD: Makefile,v 1.21 2011/11/07 14:02:30 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ interface to libgda

GNOME_PROJECT=		libgdamm
GNOME_VERSION=		4.99.5

SHARED_LIBS +=  gdamm-5.0            0.1     # 13.0

CATEGORIES+=		databases

GDA_MAJOR=		5.0
SUBST_VARS+=		GDA_MAJOR

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre sigc-2.0 xml2 z glibmm-2.4 gda-${GDA_MAJOR} stdc++
WANTLIB += dbus-1 gcrypt gnome-keyring gpg-error ffi

TAR=			${LOCALBASE}/bin/gtar
BUILD_DEPENDS=		archivers/gtar \
			devel/m4

LIB_DEPENDS=		devel/glib2mm \
			x11/gnome/libgda>=4.99.4

CONFIGURE_ENV=		ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=

.include <bsd.port.mk>
