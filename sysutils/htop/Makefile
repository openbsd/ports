# $OpenBSD: Makefile,v 1.27 2021/04/03 11:13:48 sthen Exp $

COMMENT =	interactive process viewer

GH_ACCOUNT =	htop-dev
GH_PROJECT =	htop
#GH_TAGNAME =	3.0.5
GH_COMMIT =	272e72680b84a52183d39a519d6704324063bae1
DISTNAME =	htop-3.0.5pl20210325
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://htop.dev

MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses kvm m

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAEGS}

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

post-install:
	rm -r ${PREFIX}/share/icons/

.include <bsd.port.mk>
