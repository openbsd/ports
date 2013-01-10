# $OpenBSD: Makefile,v 1.57 2013/01/10 18:11:14 sthen Exp $

BROKEN=		broken mutex locking
# see http://marc.info/?l=openbsd-ports&m=135577437106908&w=2

SHARED_ONLY=	Yes

COMMENT=	multi-purpose sniffer/interceptor/logger

DISTNAME=	ettercap-0.7.5.1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/}

HOMEPAGE=	http://www.ettercap-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c crypto curl curses form lib/libnet-1.1/net=11 menu ncurses
WANTLIB += panel pcap pcre pthread ssl z

MODULES=	devel/cmake \
		devel/gettext

LIB_DEPENDS=	net/libnet/1.1 \
		net/curl \
		devel/pcre

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_ARGS+= -DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		-DMAN_INSTALLDIR="${TRUEPREFIX}/man"

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= -DENABLE_GTK=off
.else
LIB_DEPENDS+=	x11/gtk+2
RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+2,-guic

WANTLIB += atk-1.0 cairo curl freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
.endif

NO_REGRESS=	Yes

post-install:
	mv ${WRKINST}/etc/ettercap ${PREFIX}/share/examples/ettercap
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps \
	    ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/ettercap.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/desktop/ettercap.svg \
	    ${PREFIX}/share/icons/hicolor/scalable/apps/

.include <bsd.port.mk>
