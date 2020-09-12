# $OpenBSD: Makefile,v 1.23 2020/09/12 17:25:21 ians Exp $

COMMENT =	interactive process viewer

GH_ACCOUNT =	htop-dev
GH_PROJECT =	htop
GH_TAGNAME =	3.0.1

CATEGORIES =	sysutils

HOMEPAGE =	https://htop.dev

MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses kvm m

MODULES =	lang/python
RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

MODPY_RUNDEP =		No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# htop has some bugs which take hours or days to reach.
# Keep the symbols to give a chance to the user to get an useful coredump.
MAKE_FLAGS =	AM_CPPFLAGS="-DDEBUG"
DEBUG =		-g

.include <bsd.port.mk>
