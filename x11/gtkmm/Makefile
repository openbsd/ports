# $OpenBSD: Makefile,v 1.14 2002/08/09 10:54:21 wilfried Exp $

COMMENT=		"C++ interface for gtk+"
COMMENT-docs=		"C++ interface for gtk+ documentation"

VERSION=		1.2.10
DISTNAME=		gtkmm-${VERSION}
PKGNAME-docs=		gtkmm-docs-${VERSION}
CATEGORIES=		devel x11

HOMEPAGE=		http://gtkmm.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtkmm/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
BUILD_DEPENDS=		:m4->=1.4:devel/m4
LIB_DEPENDS=		sigc.0::devel/libsigc++ \
			gdk.1,gtk.1::x11/gtk+
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-docs

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkmm/gdk
	${INSTALL_DATA} ${WRKBUILD}/docs/gdk/*.html ${PREFIX}/share/doc/gtkmm/gdk
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkmm/gtk
	${INSTALL_DATA} ${WRKBUILD}/docs/gtk/*.html ${PREFIX}/share/doc/gtkmm/gtk

.include <bsd.port.mk>
