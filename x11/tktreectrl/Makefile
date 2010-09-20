# $OpenBSD: Makefile,v 1.5 2010/09/20 07:06:49 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	tree widget extension for Tk

VERSION=	2.2.10
DISTNAME =	tktreectrl-${VERSION}
SHARED_LIBS =	treectrl22 1.0
CATEGORIES =	x11

HOMEPAGE = 	http://tktreectrl.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tktreectrl/}

WANTLIB +=		X11

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		SHLIB_VERSION=${LIBtreectrl22_VERSION}
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--datadir=${PREFIX}/share/examples \
			--docdir=${PREFIX}/share/doc/tktreectrl
FAKE_FLAGS = 		pkgdatadir=${PREFIX}/share/examples/tktreectrl
REGRESS_IS_INTERACTIVE =	X11
REGRESS_TARGET =		test
SUBST_VARS =		VERSION

pre-configure:
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/demo.tcl
	mv "${WRKSRC}/doc/What's New in TkTreeCtrl.html" ${WRKSRC}/doc/Whats_New_in_TkTreeCtrl.html

.include <bsd.port.mk>
