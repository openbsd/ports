# $OpenBSD: Makefile,v 1.2 2010/07/29 11:42:56 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	PNG photo image extension for Tcl/Tk

V =		0.9
REVISION =	0
DISTNAME =	tkpng$V
PKGNAME =	tkpng-$V
SHARED_LIBS =	tkpng09 0.0
CATEGORIES =	graphics

HOMEPAGE = 	http://www.muonics.com/FreeStuff/TkPNG/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkpng/}
EXTRACT_SUFX =		.tgz

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR}
NO_REGRESS =		Yes
SUBST_VARS =		SHLIB_VERSION
CONFIGURE_ENV =		LIBtkpng09_VERSION=${LIBtkpng09_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkpng
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/license.terms \
		${PREFIX}/share/doc/tkpng

.include <bsd.port.mk>
