# $OpenBSD: Makefile,v 1.28 2017/05/13 22:27:20 stsp Exp $

COMMENT-main=		OLSR routing daemon
COMMENT-gui=		OLSR routing daemon GUI

VERSION=		0.9.0.3
DISTNAME=		olsrd-${VERSION}
PKGNAME-main=		olsrd-${VERSION}
PKGNAME-gui=		olsrd-gui-${VERSION}
PKGNAME-plugins=	olsrd-plugins-${VERSION}

CATEGORIES=	net

HOMEPAGE=	http://www.olsr.org/
MASTER_SITES=	${HOMEPAGE}releases/0.9/

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES= -main -gui

BUILD_DEPENDS=	devel/bison

LIB_DEPENDS-main= net/libnet/1.1
WANTLIB-main=	c lib/libnet-1.1/net=11

LIB_DEPENDS-gui= x11/gtk+2
WANTLIB-gui=	${MODGETTEXT_WANTLIB}
WANTLIB-gui += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gui += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB-gui += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-gui += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gui += z


USE_GMAKE=	Yes
NO_TEST=	Yes

MODULES=	devel/gettext

ALL_TARGET=	build_all
MAKE_FLAGS=	DEBUG=0 CC="${CC}" OS=obsd LIBNET=1
CPPFLAGS+=	"-I${PREFIX}/libnet-1.1"
FAKE_FLAGS=	SBINDIR=${DESTDIR}/${PREFIX}/sbin \
		ETCDIR=${DESTDIR}/${PREFIX}/share/examples/olsrd \
		LIBDIR=${DESTDIR}/${PREFIX}/lib/olsrd-plugins \
		DOCDIR=${DESTDIR}/${PREFIX}/share/doc/olsrd \
		MANDIR=${DESTDIR}/${PREFIX}/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugin_loader.c

post-build:
	cd ${WRKSRC}/gui/linux-gtk; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

INSTALL_TARGET=	install_all

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/olsrd-plugins
	
post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gui/linux-gtk/olsrd-gui ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/lib/dot_draw/olsr-topology-view.pl \
		${PREFIX}/bin
	cd ${PREFIX}/man; gzip -f -d man5/olsrd.conf.5.gz man8/olsrd.8.gz
	${INSTALL_DATA} ${WRKSRC}/files/olsrd.conf.default.* \
		${PREFIX}/share/examples/olsrd

.include <bsd.port.mk>
