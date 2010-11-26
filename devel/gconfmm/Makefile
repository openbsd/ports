# $OpenBSD: Makefile,v 1.15 2010/11/26 15:00:45 espie Exp $

COMMENT=		C++ interface to GConf

GNOME_PROJECT=		gconfmm
GNOME_VERSION=		2.28.2

SHARED_LIBS +=		gconfmm-2.6	0.1	# .1.6

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/ORBit2 \
			devel/gconf2 \
			devel/libsigc++-2 \
			devel/glib2mm>=2.8
WANTLIB +=		ORBit-2 gconf-2>=5 sigc-2.0 glibmm-2.4


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-documentation

.include <bsd.port.mk>
