SHARED_LIBS +=	ettercap 0.0
SHARED_LIBS +=	ettercap-ui 0.0

COMMENT=	multi-purpose sniffer/interceptor/logger

V=		0.8.4.1
DISTNAME=	ettercap-$V
CATEGORIES=	net
SITES=		https://github.com/Ettercap/ettercap/releases/download/v$V/

HOMEPAGE=	https://www.ettercap-project.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl curses form iconv lib/libnet-1.1/net=11 menu
WANTLIB += panel pcap pcre2-8 pthread ssl z

MODULES=	devel/cmake
DEBUG_PACKAGES=	${BUILD_PACKAGES}
DPB_PROPERTIES=	parallel

BUILD_DEPENDS=	devel/bison

LIB_DEPENDS=	net/libnet/1.1 \
		net/curl \
		converters/libiconv \
		devel/pcre2

FLAVORS=	no_x11
FLAVOR?=

# Crude hack to let src/ec_inet.c compile. Those two symbols where
# defined in an enum in include/ec_inet.h before ettercap-0.7.5.2.
# They are currently also defined in include/missing/nameser.h, but this
# can't be used because it introduces other errors, and, more
# importantly, because using those NS_* macros in src/ec_inet.c is just
# wrong.
CFLAGS +=	-DNS_IN6ADDRSZ=16 -DNS_INT16SZ=2 \
		-I${LOCALBASE}/include
CONFIGURE_ARGS=	-DMAN_INSTALLDIR="${TRUEPREFIX}/man" \
		-DENABLE_GEOIP=off \
		-DBUNDLED_LIBS=off \
		-DENABLE_IPV6=on \
		-DINSTALL_SYSCONFDIR=${SYSCONFDIR}

# seems extremely crashy (use after free, etc) in curses mode
# whereas plaintext/gtk are not quite as bad
CONFIGURE_ARGS += -DENABLE_CURSES=off

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += -DENABLE_GTK=off
.else
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+4,-guic
CONFIGURE_ARGS += -DGTK_BUILD_TYPE=GTK3
LIB_DEPENDS +=	x11/gtk+3
WANTLIB += atk-1.0 cairo freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 gtk-3 pango-1.0
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
