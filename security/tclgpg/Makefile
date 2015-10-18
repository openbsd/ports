# $OpenBSD: Makefile,v 1.3 2015/10/18 15:00:48 czarkoff Exp $

SHARED_ONLY =		Yes

COMMENT =		Tcl interface to GNU Privacy Guard
DISTNAME =		tclgpg-20151008
CATEGORIES =		security
HOMEPAGE =		https://chiselapp.com/user/sgolovan/repository/tclgpg/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

# Download is hosted by fossil webui, which accepts requests for any filename
# and chooses checkin to serve based on "uuid" query key
MASTER_SITES =		${HOMEPAGE:=tarball/}
_FILENAME =		${DISTNAME}${EXTRACT_SUFX}
UUID =			b0d82f8bec899cf1956e56a9691fce31cd1bcb8e
DISTFILES =		${_FILENAME}{${_FILENAME}?uuid=${UUID}}

MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			devel/tcllib
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			security/gnupg

FAKE_FLAGS =		INSTALL_PROGRAM='$${INSTALL_DATA}' \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)' \
			PKG_DIR='$$(PACKAGE_NAME)'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR}

AUTOCONF_VERSION =	2.69
TEST_TARGET =		test

.include <bsd.port.mk>
