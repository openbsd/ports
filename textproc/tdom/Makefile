COMMENT =		fast XML/DOM/XPath/XSLT/HTML/JSON extension for Tcl ${MODTCL_COMMENT}

REVISION =		0

V =			0.9.6
VER =			${V:S/.//g}

DISTNAME =		tdom-${V}

SHARED_LIBS =		${MODTCL_EXTLIB}tdom${VER} 0.0

CATEGORIES =		textproc
HOMEPAGE =		http://www.tdom.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# MPL 2.0
PERMIT_PACKAGE =	Yes

SITES =			${HOMEPAGE:=downloads/}
EXTRACT_SUFX =		-src.tgz

WANTLIB =		expat

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tdom \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-expat=/usr \
			--disable-rpath \
			SHLIB_VERSION=${LIB${MODTCL_EXTLIB}tdom${VER}_VERSION}

TEST_TARGET =		test

SUBST_VARS =		VER MODTCL_EXTLIB MODTCL_EXT8 MODTCL_EXT9

WRKDIST =		${WRKDIR}/${DISTNAME}-src

# Use TESTFLAGS to control the Tdom tests
TESTFLAGS =

FLAVORS = tcl8
FLAVOR ?=

.if ${FLAVOR:Mtcl8}
MODTCL_VERSION =	8.6
.else
MODTCL_VERSION =	9
INSTALL_TARGET =	all install-lib-binaries
RUN_DEPENDS +=		textproc/tdom,tcl8
TEST_FLAGS +=		TCLSH_PROG=${MODTCL_BIN}
.endif

.if ${FLAVOR:Mtcl8}
post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MODTCL_MODDIR}/86
	${INSTALL_DATA} ${WRKSRC}/extensions/tdomhtml/tdomhtml.tcl \
		${DESTDIR}${MODTCL_MODDIR}/86/tdomhtml-0.1.0.tm
.else
post-install:
	rm ${WRKINST}${MODTCL_TCLDIR}/tdom/{pkgIndex.tcl,tdom.tcl}
	${INSTALL_DATA_DIR} ${WRKINST}${MODTCL_TCLDIR}/tdom/tcl9
	mv ${WRKINST}${MODTCL_TCLDIR}/tdom/tdomConfig.sh \
	    ${WRKINST}${MODTCL_TCLDIR}/tdom/tcl9/
.endif

.include <bsd.port.mk>
