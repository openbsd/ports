COMMENT =		tree widget extension for Tk

V =			2.4.1

DISTNAME =		tktreectrl-${V}
REVISION =		3
EPOCH =			0
CATEGORIES =		x11
HOMEPAGE =		https://tktreectrl.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		m X11

SITES =			${SITE_SOURCEFORGE:=tktreectrl/}
MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
FAKE_FLAGS =		PKG_DIR=tktreectrl INSTALL_PROGRAM='$$(INSTALL_DATA)'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--libdir=${MODTCL_TCLDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--datadir=${PREFIX}/share/examples \
			--docdir=${PREFIX}/share/doc/tktreectrl

TEST_IS_INTERACTIVE =X11
TEST_TARGET =	test
SUBST_VARS =	VER

VER =		${V:R:S/.//g}

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/demo.tcl

.include <bsd.port.mk>
