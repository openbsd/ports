# $OpenBSD: Makefile,v 1.1.1.1 2010/07/16 08:28:14 sebastia Exp $

SHARED_ONLY=    Yes

COMMENT=	system tray icon support for Tk

DISTNAME=	tktray1.3.8
PKGNAME=	tktray-1.3.8
SHARED_LIBS=	${DISTNAME:S/.//g} 0.0
CATEGORIES=	x11

HOMEPAGE= 	http://code.google.com/p/tktray/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://tktray.googlecode.com/files/

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS=    ${MODTK_RUN_DEPENDS}
WANTLIB+=	X11 Xext

USE_GMAKE=	Yes
SEPARATE_BUILD= simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--datadir=${PREFIX}/share/examples
CONFIGURE_ENV=	SHLIB_VERSION=${LIBtktray138_VERSION}
REGRESS_TARGET=	test
REGRESS_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
