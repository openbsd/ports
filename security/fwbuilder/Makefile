COMMENT =	firewall GUI

V =		6.0.0
# We need to have ${LOCALBASE}/share/* directories matching with our own
# versioning, see CONFIGURE_ARGS and patches/patch-cmake_VERSION_cmake as well.
RC =		rc1
GH_ACCOUNT =	fwbuilder
GH_PROJECT =	fwbuilder
GH_TAGNAME =	v${V}-${RC}
DISTNAME =	${GH_PROJECT}-${V}${RC}

CATEGORIES =	net security

# GPLv2+ mostly, some code under BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += c crypto m netsnmp util xml2 xslt z

MODULES =	devel/cmake \
		x11/qt5

# .orig produces too much spam in tests directories
PATCHORIG =	.orig.port

LIB_DEPENDS =	net/net-snmp \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtbase

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# Requires itself to be installed for tests
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

CONFIGURE_ARGS +=	-DNETSNMP_INCLUDE_DIR="${LOCALBASE}/include/net-snmp/library" \
			-DPROJECT_VERSION_EXTRA="${RC}"
CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# 2 failures:
# instDialogInstallTest: fails because it can't catch its own background process
# FirewallDialogTest: the test seems broken because the dialog text changed
TEST_IS_INTERACTIVE =	X11

# For PLIST
SUBST_VARS +=	DISTNAME

# gunzip all manpages, it's an hell to patch.
post-install:
	ln -sf /usr/bin/gunzip ${WRKDIR}/bin/gunzip
	cd ${PREFIX}/man/man1 && gunzip *.1.gz

.include <bsd.port.mk>
