# $OpenBSD: Makefile,v 1.9 2006/08/04 00:10:42 espie Exp $

COMMENT=		"Desktop wallpaper manager and X11 screensaver"

DISTNAME=		chbg-1.5
CATEGORIES=     	x11

HOMEPAGE=		http://chbg.sf.net
EXTRACT_SUFX=		.tgz

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		X11 Xext Xi c gdk glib gmodule gtk iconv intl jpeg m \
			png tiff ungif z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=chbg/}

LIB_DEPENDS=		gdk_imlib.>=19::graphics/imlib

CONFIGURE_ARGS=		--with-image-library=gdkimlib \
			--with-imlib1-config=${LOCALBASE}/bin/imlib-config \
			--with-gtk-config=${LOCALBASE}/bin/gtk-config
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng"

# Will install some stub files for gnome. Needed if Gnome not installed
# when packaging.
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			GNOME_PREFIX=${PREFIX}

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		concurrent

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-*
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chbg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/kde2.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/xscreensaver-howto.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/chbgrc.sample ${PREFIX}/share/examples/chbg

.include <bsd.port.mk>
