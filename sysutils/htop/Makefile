# $OpenBSD: Makefile,v 1.1.1.1 2016/11/16 19:48:19 juanfra Exp $

COMMENT =	interactive process viewer
DISTNAME =	htop-2.0.2
CATEGORIES =	sysutils
HOMEPAGE =	https://hisham.hm/htop/index.php
MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c kvm m ncursesw
MODULES =	lang/python
MASTER_SITES =	https://hisham.hm/htop/releases/2.0.2/
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
