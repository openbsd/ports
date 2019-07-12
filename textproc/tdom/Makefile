# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:15 sthen Exp $

COMMENT =		fast XML/DOM/XPath/XSLT/HTML/JSON extension for Tcl

V =			0.9.1
VER =			${V:S/.//g}

DISTNAME =		tdom-${V}
SHARED_LIBS =		tdom${VER} 0.0
CATEGORIES =		textproc
HOMEPAGE =		http://www.tdom.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# MPL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE:=downloads/}
EXTRACT_SUFX =		-src.tgz

WANTLIB =		expat

MODULES =		lang/tcl
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tdom \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)' \
			'INSTALL_PROGRAM = $${INSTALL} -m 755' \
			'INSTALL_DATA    = $${INSTALL} -m 644'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-expat=/usr \
			--disable-rpath \
			SHLIB_VERSION=${LIBtdom${VER}_VERSION}

TEST_TARGET =		test
SUBST_VARS =		VER

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MODTCL_MODDIR}/86
	${INSTALL_DATA} ${WRKSRC}/extensions/tdomhtml/tdomhtml.tcl \
		${DESTDIR}${MODTCL_MODDIR}/86/tdomhtml-0.1.0.tm

.include <bsd.port.mk>
