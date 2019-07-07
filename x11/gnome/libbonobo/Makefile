# $OpenBSD: Makefile,v 1.66 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=	GNOME component and compound document system

GNOME_PROJECT=	libbonobo
GNOME_VERSION=	2.32.1
EXTRACT_SUFX=	.tar.bz2
REVISION=	10

SHARED_LIBS +=	bonobo-activation    6.0      # .4.0
SHARED_LIBS +=	bonobo-2             2.0      # .0.0

CATEGORIES=	devel

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 c ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 lzma m pcre pthread xml2 z iconv intl

MODULES=	x11/gnome

BUILD_DEPENDS=	devel/popt
LIB_DEPENDS=	devel/ORBit2 \
		devel/glib2 \
		textproc/libxml

# popt usage is deprecated in gnome, but the header file is still included
# from some libbonobo header and might still be used inside libbonobo
RUN_DEPENDS=   devel/popt

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libbonobo

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/activation-server/bonobo-activation-server.1

post-install:
	rm ${PREFIX}/lib/bonobo/monikers/*.{a,la}
	rm ${PREFIX}/lib/orbit-2.0/*.{a,la}

.include <bsd.port.mk>
