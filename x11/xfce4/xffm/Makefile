# $OpenBSD: Makefile,v 1.4 2005/11/16 10:30:13 wilfried Exp $

COMMENT=	"xfce4 file manager"
V=		4.2.3
DISTNAME=	xffm-${V}
PKGNAME=	${DISTNAME}p0
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	dbh.1.0::databases/dbh \
		xml2.9.0::textproc/libxml \
		xfcegui4.3.4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.2.3,xfce4mcs-manager.2.3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE SM X11 Xext Xrender c fontconfig \
		freetype m pthread z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 cairo glitz png \
		startup-notification-1.0.0 xfce4util.1

CONFIGURE_ARGS+=--disable-librsvg \
		--enable-panel \
		--enable-scrambledir

# XXX workaround libtool's versioning of simple shared object modules
post-install:
.for n in book find fstab recent trash
	${INSTALL_DATA} ${WRKSRC}/modules/.libs/libxffm_${n}.so.1.0 \
		${PREFIX}/lib/xfce4/xffm/libxffm_${n}.so
.endfor
	${INSTALL_DATA} ${WRKSRC}/modules/.libs/libxffm_prop.so.1.0 \
		${PREFIX}/lib/xfce4/xffm/libxffm_prop.so
	${INSTALL_DATA} ${WRKSRC}/smb/.libs/libxffm_smb.so.1.0 \
		${PREFIX}/lib/xfce4/xffm/libxffm_smb.so

.include <bsd.port.mk>
