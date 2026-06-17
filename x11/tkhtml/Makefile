COMMENT =	Tk widget to display HTML/CSS formatted contents

V =		17
GH_ACCOUNT =	Geballin
GH_PROJECT =	tkhtml3
GH_TAGNAME =	Alpha-$V
PKGNAME =	tkhtml-3a$V

CATEGORIES =	x11
HOMEPAGE = 	https://github.com/Geballin/tkhtml3/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11

MODULES =		x11/tk
MODTK_VERSION =		8.6
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}

RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			devel/tcllib

FAKE_FLAGS =		PKG_DIR=tkhtml \
			INSTALL_PROGRAM='$$(INSTALL_DATA)'

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--libdir=${MODTCL_TCLDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR} \
			--datadir=${PREFIX}/share/examples

TEST_TARGET =		test
TEST_IS_INTERACTIVE =	X11

SUBST_VARS =		VER
VER =			30

post-install:
	${INSTALL_DATA} ${WRKSRC}/hv/combobox.tcl \
	    ${DESTDIR}${MODTCL_TCLDIR}/tkhtml/

.include <bsd.port.mk>
