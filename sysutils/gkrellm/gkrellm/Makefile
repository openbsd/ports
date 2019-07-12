# $OpenBSD: Makefile,v 1.78 2019/07/12 21:02:26 sthen Exp $

COMMENT-main=	single process stack of system monitors for GTK+2 (server)
COMMENT-client=	single process stack of system monitors for GTK+2

V=		2.3.10
DISTNAME=	gkrellm-${V}
PKGNAME-main=	gkrellm-server-${V}
PKGNAME-client=	gkrellm-${V}
REVISION=	2
CATEGORIES=	sysutils

HOMEPAGE=	http://www.gkrellm.net/

# GPLv3 with OpenSSL license exception
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://gkrellm.srcbox.net/releases/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_client
FLAVOR?=

MULTI_PACKAGES=	-main
.if !${FLAVOR:Mno_client}
MULTI_PACKAGES+=-client
.else
WRKBUILD=	${WRKDIST}/server
.endif

WANTLIB=		c kvm pthread glib-2.0 gmodule-2.0 gthread-2.0 intl
LIB_DEPENDS=		devel/glib2
LIB_DEPENDS-client=	${LIB_DEPENDS} \
			x11/gtk+2

WANTLIB-client += ${WANTLIB}
WANTLIB-client += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-client += Xinerama Xrandr Xrender atk-1.0 cairo crypto fontconfig
WANTLIB-client += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 gobject-2.0
WANTLIB-client += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-client += ssl z

BUILD_DEPENDS=	devel/gettext,-tools

NO_TEST=	Yes
USE_GMAKE=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

MAKE_ENV+=	without_gnutls=yes
MAKE_FLAGS+=	CC="${CC}"

# not all powerpc support apm(4), hence the use of ${MACHINE} and macppc
# (patches/patch-src_sysdeps_openbsd_c)
.if ${MACHINE} == "macppc"
CFLAGS+=	-D__macppc__
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/server/gkrellmd.h \
		${WRKSRC}/gkrellm.1 ${WRKSRC}/gkrellmd.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gkrellm-server
	${INSTALL_DATA} ${WRKSRC}/server/gkrellmd.conf \
		${PREFIX}/share/examples/gkrellm-server

.include <bsd.port.mk>
