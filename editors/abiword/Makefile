# $OpenBSD: Makefile,v 1.36 2004/12/25 21:51:00 alek Exp $

COMMENT=		"open-source, cross-platform WYSIWYG word processor"

VERSION=		2.0.7
DISTNAME=		abiword-${VERSION}
CATEGORIES=		editors

HOMEPAGE=		http://www.abisource.com/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=		fribidi::devel/fribidi \
			gthread-2.0.0.0::devel/glib2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			glade-2.0.0.0::devel/libglade2 \
			popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xinerama Xrender \
			atk-1.0.0.0 c fontconfig freetype glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 m pango-1.0.0.0 \
			pangox-1.0.0.0 pangoxft-1.0.0.0 png pthread \
			stdc++ xml2.0.0 z Xcursor

MASTER_SITES=   	${MASTER_SITE_SOURCEFORGE:=abiword/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-pspell
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

FLAVORS=		gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			nautilus::x11/gnome/nautilus
WANTLIB+=		ORBit-2.0.0 art_lgpl_2.0.0 bonobo-2.0.0 \
			bonobo-activation bonoboui-2.0.0 eel-2.0.0 \
			gailutil gconf-2.0.0 gnome-2.0.0 gnomecanvas-2.0.0 \
			gnomeprint-2-2.0.0 gnomeui-2.0.0 gnomevfs-2.0.0 \
			pangoft2-1.0.0.0

CONFIGURE_ARGS+=	--enable-gnome
.endif

MAKE_FILE=		GNUmakefile

WRKDIST=		${WRKDIR}/abiword-${VERSION}
WRKSRC=			${WRKDIST}/abi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/src/pkg/linux/rpm/data/abiword.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
