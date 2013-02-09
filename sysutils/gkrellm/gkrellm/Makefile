# $OpenBSD: Makefile,v 1.66 2013/02/09 14:49:53 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	single process stack of system monitors for GTK+2 (server)
COMMENT-client=	single process stack of system monitors for GTK+2

V=		2.3.5
DISTNAME=	gkrellm-${V}
PKGNAME-main=	gkrellm-server-${V}
PKGNAME-client=	gkrellm-${V}
REVISION-main=	5
REVISION-client=3
CATEGORIES=	sysutils sysutils/gkrellm

HOMEPAGE=	http://www.gkrellm.net/

# GPLv3 with OpenSSL license exception
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes


MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellm/
EXTRACT_SUFX=	.tar.bz2

USE_GROFF =	Yes
PSEUDO_FLAVORS=	no_client
FLAVOR?=

MULTI_PACKAGES=	-main
.if !${FLAVOR:Mno_client}
MULTI_PACKAGES+=-client
.else
WRKBUILD=	${WRKDIST}/server
.endif

MODULES=		devel/gettext
WANTLIB=		c kvm pthread glib-2.0 gmodule-2.0 gthread-2.0
LIB_DEPENDS=		devel/glib2
LIB_DEPENDS-client=	${LIB_DEPENDS} \
			x11/gtk+2

WANTLIB-client += ${WANTLIB} gdk-x11-2.0 gtk-x11-2.0
WANTLIB-client += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB-client += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo crypto
WANTLIB-client += expat fontconfig freetype m pango-1.0 pangocairo-1.0
WANTLIB-client += pangoft2-1.0 pixman-1 png pthread-stubs ssl xcb z
WANTLIB-client += gio-2.0 gobject-2.0 gdk_pixbuf-2.0
WANTLIB-client += GL Xxf86vm drm xcb-render xcb-shm

NO_REGRESS=	Yes
USE_GMAKE=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

MAKE_ENV+=	without_gnutls=yes

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
