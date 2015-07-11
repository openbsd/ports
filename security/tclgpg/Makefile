# $OpenBSD: Makefile,v 1.2 2015/07/11 10:39:12 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		Tcl interface to GNU Privacy Guard
DISTNAME =		tclgpg-20150324
CATEGORIES =		security
HOMEPAGE =		https://chiselapp.com/user/sgolovan/repository/tclgpg/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

# Download is hosted by fossil webui, which accepts requests for any filename
# and chooses checkin to serve based on "uuid" query key
MASTER_SITES =		${HOMEPAGE:=tarball/}
_FILENAME =		${DISTNAME}${EXTRACT_SUFX}
UUID =			4cfd9fa949c98386eead3382d6a90f3511fa7429
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

AUTOCONF_VERSION =	2.59
TEST_TARGET =		test

.include <bsd.port.mk>
