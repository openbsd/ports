# $OpenBSD: Makefile,v 1.5 2002/12/17 09:45:44 wilfried Exp $

COMMENT=		"C++ interface for the GNOME libraries"
COMMENT-docs=		"C++ interface for the GNOME libraries documentation"

VERSION=		1.2.3
DISTNAME=		gnomemm-${VERSION}
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
LIB_DEPENDS=		gdkmm.2,gtkmm.2::x11/gtkmm \
			art_lgpl.4,gnome.36,gnomesupport.0,gnomeui.46::x11/gnome/libs
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnomemm
	${INSTALL_DATA} ${WRKBUILD}/docs/gnome/*.html ${PREFIX}/share/doc/gnomemm/

.include <bsd.port.mk>
