# $OpenBSD: Makefile,v 1.32 2004/01/10 22:51:14 couderc Exp $

COMMENT=		"open-source, cross-platform WYSIWYG word processor"

VERSION=		2.0.2
DISTNAME=		abiword-${VERSION}
CATEGORIES=		editors

HOMEPAGE=		http://www.abisource.com/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig

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

CONFIGURE_ARGS+=	--enable-gnome
.endif

MAKE_FILE=		GNUmakefile

WRKDIST=		${WRKDIR}/abiword-${VERSION}
WRKSRC=			${WRKDIST}/abi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/src/pkg/linux/rpm/data/abiword.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
