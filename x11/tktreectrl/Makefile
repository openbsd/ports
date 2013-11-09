# $OpenBSD: Makefile,v 1.13 2013/11/09 18:22:03 zhuk Exp $

SHARED_ONLY =		Yes

COMMENT =		tree widget extension for Tk
DISTNAME =		tktreectrl-2.4.1
REVISION =		0
EPOCH =			0
SHARED_LIBS =		treectrl24 0.0
CATEGORIES =		x11
HOMEPAGE =		http://tktreectrl.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m X11

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tktreectrl/}
MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tktreectrl \
			INSTALL_PROGRAM='${INSTALL_DATA}'

SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--libdir=${MODTCL_TCLDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--datadir=${PREFIX}/share/examples \
			--docdir=${PREFIX}/share/doc/tktreectrl \
			SHLIB_VERSION=${LIBtreectrl24_VERSION}

TEST_IS_INTERACTIVE =X11
TEST_TARGET =	test

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/demo.tcl

.include <bsd.port.mk>
