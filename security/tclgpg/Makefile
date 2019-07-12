# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:37 sthen Exp $

COMMENT =		Tcl interface to GNU Privacy Guard
DISTNAME =		tclgpg-20160615
CATEGORIES =		security
HOMEPAGE =		https://chiselapp.com/user/sgolovan/repository/tclgpg/
REVISION =		0

# 2-clause BSD
PERMIT_PACKAGE =	Yes

# Download is hosted by fossil webui, which accepts requests for any filename
# and chooses checkin to serve based on "uuid" query key
MASTER_SITES =		${HOMEPAGE:=tarball/}
_FILENAME =		${DISTNAME}${EXTRACT_SUFX}
UUID =			ffd35a07693f3216ba0b398cca9c7497a288c7aa
DISTFILES =		${_FILENAME}{${_FILENAME}?uuid=${UUID}}

MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			devel/tcllib
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			security/gnupg
TEST_DEPENDS =		${RUN_DEPENDS}

FAKE_FLAGS =		INSTALL_PROGRAM='$${INSTALL_DATA}' \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)' \
			PKG_DIR='$$(PACKAGE_NAME)'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR}

AUTOCONF_VERSION =	2.69
TEST_TARGET =		test

.include <bsd.port.mk>
