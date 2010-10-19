# $OpenBSD: Makefile,v 1.4 2010/10/19 08:13:59 espie Exp $

SHARED_ONLY=    Yes

COMMENT=	system tray icon support for Tk

VERSION=	1.3.9
DISTNAME=	tktray${VERSION}
PKGNAME=	tktray-${VERSION}
SHARED_LIBS=	tktray${VERSION:S/.//g} 0.0
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
WANTLIB+=	X11

USE_GMAKE=	Yes
USE_GROFF =	Yes
SEPARATE_BUILD= simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--datadir=${PREFIX}/share/examples
CONFIGURE_ENV=	SHLIB_VERSION=${LIBtktray139_VERSION}
REGRESS_TARGET=	test
REGRESS_IS_INTERACTIVE=	X11
SUBST_VARS=	VERSION

.include <bsd.port.mk>
