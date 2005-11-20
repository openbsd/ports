# $OpenBSD: Makefile,v 1.10 2005/11/20 13:29:19 wilfried Exp $

COMMENT=		"C++ interface for the GNOME libraries"
COMMENT-docs=		"C++ interface for the GNOME libraries documentation"

VERSION=		1.2.3
DISTNAME=		gnomemm-${VERSION}
PKGNAME=		${DISTNAME}p0
PKGNAME-docs=		gnomemm-docs-${VERSION}
CATEGORIES=		devel x11

HOMEPAGE=		http://gtkmm.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtkmm/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
MODULES=		devel/gettext
LIB_DEPENDS=		::x11/gtkmm \
			art_lgpl.4,gnome.36,gnomesupport.0,gnomeui.46::x11/gnome/libs
WANTLIB=		ICE SM X11 Xext Xi audiofile esd gdk gdk_imlib glib \
			gmodule gtk jpeg m png tiff ungif z
.endif
.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-docs
CONFIGURE_ENV+=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnomemm
	${INSTALL_DATA} ${WRKBUILD}/docs/gnome/*.html ${PREFIX}/share/doc/gnomemm/

.include <bsd.port.mk>
