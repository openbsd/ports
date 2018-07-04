# $OpenBSD: Makefile,v 1.6 2018/07/04 04:13:53 ians Exp $

COMMENT =	interactive process viewer
V =		2.2.0
DISTNAME =	htop-${V}
CATEGORIES =	sysutils
HOMEPAGE =	https://hisham.hm/htop/index.php
MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c curses kvm m
MODULES =	lang/python
MASTER_SITES =	https://hisham.hm/htop/releases/${V}/
RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

ALL_TARGET =		debug

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	scripts/MakeHeader.py

# htop has some bugs which takes hours or days to reach.
# Keep the symbols to give a chance to the user to get an useful coredump.
INSTALL_STRIP=

.include <bsd.port.mk>
