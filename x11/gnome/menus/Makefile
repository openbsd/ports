# $OpenBSD: Makefile,v 1.2 2005/11/13 06:29:05 marcm Exp $

COMMENT=		"Implementation of the FreeDesktop Desktop Menu Spec"

VERSION=		2.10.2
DISTNAME=		gnome-menus-${VERSION}
#PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pthread ssl z \
			glib-2.0.0.0 gthread-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 \
			ORBit-2.0 ORBitCosNaming-2.0 \
			bonobo-activation bonobo-2 \
			popt xml2 gconf-2.5

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-menus/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomevfs-2::x11/gnome/vfs2

USE_GMAKE=		Yes
USE_LIBTOL=		Yes
CONFIGURE_STYLE=	gnu
# Note to those who follow:
# Don't jack with SYSCONFDIR here unless you fully grok the
# "XDG Base Directory Specification" -- unless you really want to
# spend hours figuring out why you just broke *everything*
#CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-menus/

.include <bsd.port.mk>
