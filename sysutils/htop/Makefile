# $OpenBSD: Makefile,v 1.21 2020/07/17 08:36:04 tb Exp $

COMMENT =	interactive process viewer

V =		2.2.0
DISTNAME =	htop-${V}
REVISION =	15

CATEGORIES =	sysutils

HOMEPAGE =	https://hisham.hm/htop/index.php

MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses kvm m

MASTER_SITES =	https://hisham.hm/htop/releases/${V}/

MODULES =	lang/python
RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	scripts/MakeHeader.py

# htop has some bugs which take hours or days to reach.
# Keep the symbols to give a chance to the user to get an useful coredump.
MAKE_FLAGS =	AM_CPPFLAGS="-DDEBUG"
DEBUG =		-g 

.include <bsd.port.mk>
