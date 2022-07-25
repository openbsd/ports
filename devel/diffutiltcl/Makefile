COMMENT =		diff functions for Tcl

V =			0.4.2

DISTNAME =		diffutiltcl-${V}
GH_ACCOUNT =		pspjuth
GH_PROJECT =		DiffUtilTcl
GH_COMMIT =		bc69eb7646bd42e5f5812ed18bd1b4f578cda5bc
CATEGORIES =		devel
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =		PKG_DIR=diffutiltcl
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} --libdir=${MODTCL_TCLDIR}
TEST_TARGET =		test
SUBST_VARS =		VER

VER =			${V:S/.//g}

# No need to regen the docs
post-configure:
	mkdir -p ${WRKBUILD}/doc
	touch ${WRKBUILD}/doc/diffutil.{n,html}

.include <bsd.port.mk>
