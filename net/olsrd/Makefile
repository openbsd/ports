# $OpenBSD: Makefile,v 1.8 2010/06/14 12:36:34 sebastia Exp $

COMMENT-main=		OLSR routing daemon
COMMENT-gui=		OLSR routing daemon GUI
COMMENT-plugins=	OLSR routing daemon plugins

VERSION=		0.6.0
DISTNAME=		olsrd-${VERSION}
PKGNAME-main=		olsrd-${VERSION}
PKGNAME-gui=		olsrd-gui-${VERSION}
PKGNAME-plugins=	olsrd-plugins-${VERSION}
CATEGORIES=     	net

HOMEPAGE=	http://www.olsr.org/
MASTER_SITES=	http://www.olsr.org/releases/0.6/

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES= -main -gui -plugins
WANTLIB-main=	c
WANTLIB-gui += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gui += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB-gui += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB-gui += gthread-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gui += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-render-util
WANTLIB-gui += z
LIB_DEPENDS-gui= gtk-x11-2.0.,gdk-x11-2.0.,gdk_pixbuf-2.0.::x11/gtk+2
RUN_DEPENDS-plugins=	::net/olsrd

USE_GMAKE=	Yes
NO_REGRESS=	Yes
BUILD_DEPENDS=	::devel/bison

MODULES=	gcc3
MODGCC3_ARCHES=	sparc


ALL_TARGET= all libs
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugin_loader.c

post-build:
	@cd ${WRKSRC}/gui/linux-gtk; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/olsrd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/gui/linux-gtk/olsrd-gui ${PREFIX}/sbin
	@mkdir -p ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/dot_draw/olsrd_dot_draw.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_SCRIPT} ${WRKSRC}/lib/dot_draw/olsr-topology-view.pl ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/lib/dyn_gw/olsrd_dyn_gw.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/dyn_gw_plain/olsrd_dyn_gw_plain.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/httpinfo/olsrd_httpinfo.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/mini/olsrd_mini.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/nameservice/olsrd_nameservice.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/pgraph/olsrd_pgraph.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/secure/olsrd_secure.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/txtinfo/olsrd_txtinfo.so ${PREFIX}/lib/olsrd-plugins
	${INSTALL_PROGRAM} ${WRKSRC}/lib/watchdog/olsrd_watchdog.so ${PREFIX}/lib/olsrd-plugins
	@cd ${WRKSRC}/files  && ${GUNZIP_CMD} olsrd.conf.5.gz olsrd.8.gz
	${INSTALL_MAN} ${WRKSRC}/files/olsrd.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/files/olsrd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/olsrd
	${INSTALL_DATA} ${WRKSRC}/files/olsrd.conf.default.* \
		${PREFIX}/share/examples/olsrd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/olsrd
	@for i in CHANGELOG README README-Link-Quality*; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${PREFIX}/share/doc/olsrd; \
	done

.include <bsd.port.mk>
