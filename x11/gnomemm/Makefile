# $OpenBSD: Makefile,v 1.17 2006/11/26 10:53:32 espie Exp $

COMMENT-main=		"C++ interface for the GNOME libraries"
COMMENT-docs=		"C++ interface for the GNOME libraries documentation"

VERSION=		1.2.4
DISTNAME=		gnomemm-${VERSION}
PKGNAME-main=		gnomemm-${VERSION}p0
PKGNAME-docs=		gnomemm-docs-${VERSION}
SHARED_LIBS=		gnomemm 11.0
CATEGORIES=		devel x11

HOMEPAGE=		http://gtkmm.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtkmm/}

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext
LIB_DEPENDS=		::x11/gtkmm \
			art_lgpl.>=4,gnome.>=36,gnomesupport,gnomeui.>=46::x11/gnome/libs
WANTLIB=		ICE SM X11 Xext Xi audiofile esd gdk gdk_imlib glib \
			gmodule gtk jpeg m png tiff ungif z

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
WANTLIB-docs=

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
