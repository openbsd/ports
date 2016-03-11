# $OpenBSD: Makefile,v 1.5 2016/03/11 20:28:31 naddy Exp $

SHARED_ONLY =		Yes

COMMENT =		Tcl interface to GNU Privacy Guard
DISTNAME =		tclgpg-20160113
CATEGORIES =		security
HOMEPAGE =		https://chiselapp.com/user/sgolovan/repository/tclgpg/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

# Download is hosted by fossil webui, which accepts requests for any filename
# and chooses checkin to serve based on "uuid" query key
MASTER_SITES =		${HOMEPAGE:=tarball/}
_FILENAME =		${DISTNAME}${EXTRACT_SUFX}
UUID =			09a9f954b2d39b841a2685faa917f892f2d07c98
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
