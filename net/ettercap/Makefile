# $OpenBSD: Makefile,v 1.69 2019/07/12 21:02:23 sthen Exp $

COMMENT=	multi-purpose sniffer/interceptor/logger

DISTNAME=	ettercap-0.7.5.3
REVISION=	6
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/}

HOMEPAGE=	http://www.ettercap-project.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl curses form iconv lib/libnet-1.1/net=11 menu
WANTLIB += panel pcap pcre pthread ssl z

MODULES=	devel/cmake

BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	net/libnet/1.1 \
		net/curl \
		converters/libiconv \
		devel/pcre

FLAVORS=	no_x11
FLAVOR?=

# Crude hack to let src/ec_inet.c compile. Those two symbols where
# defined in an enum in include/ec_inet.h before ettercap-0.7.5.2.
# They are currently also defined in include/missing/nameser.h, but this
# can't be used because it introduces other errors, and, more
# importantly, because using those NS_* macros in src/ec_inet.c is just
# wrong.
CFLAGS+=	-DNS_IN6ADDRSZ=16 -DNS_INT16SZ=2

CONFIGURE_ARGS+= -DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		-DMAN_INSTALLDIR="${TRUEPREFIX}/man"

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= -DENABLE_GTK=off
.else
LIB_DEPENDS+=	x11/gtk+2
RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += atk-1.0 cairo curl gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += gio-2.0 gmodule-2.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0
.endif

NO_TEST=	Yes

post-install:
	mv ${WRKINST}/etc/ettercap ${PREFIX}/share/examples/ettercap
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps \
	    ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/ettercap.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/desktop/ettercap.svg \
	    ${PREFIX}/share/icons/hicolor/scalable/apps/

.include <bsd.port.mk>
