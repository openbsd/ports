# $OpenBSD: Makefile,v 1.37 2009/10/10 14:05:15 ajacoutot Exp $

COMMENT=	GNOME component and compound document system

GNOME_PROJECT=	libbonobo
GNOME_VERSION=	2.24.2
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=	bonobo-activation    6.0      # .4.0
SHARED_LIBS +=	bonobo-2             2.0      # .0.0

CATEGORIES=	devel

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m dbus-1 pcre pthread z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	::devel/popt
LIB_DEPENDS=	ORBit-2.>=2,ORBitCosNaming-2.>=2::devel/ORBit2 \
		glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
		xml2.>=9::textproc/libxml \
		dbus-glib-1::x11/dbus-glib

# popt usage is deprecated in gnome, but the header file is still included
# from some libbonobo header and might still be used inside libbonobo
RUN_DEPENDS=   ::devel/popt

CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libbonobo

pre-configure:
	${SUBST_CMD} ${WRKSRC}/activation-server/bonobo-activation-server.1

.include <bsd.port.mk>

CONFIGURE_ARGS+= --sysconfdir="${SYSCONFDIR}/gnome"
