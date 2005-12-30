# $OpenBSD: Makefile,v 1.24 2005/12/30 00:35:14 naddy Exp $

COMMENT=		"C++ interface for gtk+"
COMMENT-docs=		"C++ interface for gtk+ documentation"

VERSION=		1.2.10
DISTNAME=		gtkmm-${VERSION}
PKGNAME=		${DISTNAME}p3
PKGNAME-docs=		gtkmm-docs-${VERSION}
SHARED_LIBS=		gdkmm 2.2 \
			gtkmm 2.5
MODGNU_SHARED_LIBS=	gdkmm '' \
			gtkmm ''
CATEGORIES=		devel x11

HOMEPAGE=		http://gtkmm.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtkmm/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=		:libsigc++-1.*:devel/libsigc++ \
			gdk.1,gtk.1::x11/gtk+
.endif
.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
WANTLIB=
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-docs
CONFIGURE_ENV+=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkmm/gdk
	${INSTALL_DATA} ${WRKBUILD}/docs/gdk/*.html ${PREFIX}/share/doc/gtkmm/gdk
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkmm/gtk
	${INSTALL_DATA} ${WRKBUILD}/docs/gtk/*.html ${PREFIX}/share/doc/gtkmm/gtk

.include <bsd.port.mk>
