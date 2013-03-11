# $OpenBSD: Makefile,v 1.27 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ interface to libgda

GNOME_PROJECT=		libgdamm
GNOME_VERSION=		4.99.6
REVISION=		3

SHARED_LIBS +=  gdamm-5.0            0.1     # 13.0

CATEGORIES+=		databases

GDA_MAJOR=		5.0
SUBST_VARS+=		GDA_MAJOR

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += dbus-1 ffi gcrypt gda-5.0 gio-2.0 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += m pcre sigc-2.0 stdc++ xml2 z pthread

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/m4

LIB_DEPENDS=		devel/glib2mm \
			x11/gnome/libgda>=5.0.2v2

CONFIGURE_ENV=		ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=

.include <bsd.port.mk>
