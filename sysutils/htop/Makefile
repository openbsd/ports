COMMENT =	interactive process viewer

GH_ACCOUNT =	htop-dev
GH_PROJECT =	htop
#GH_TAGNAME =	3.0.5
GH_COMMIT =	feec16cbb53dabc6a52ef2f69a6a13798be82617
DISTNAME =	htop-3.0.5pl20210418
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://htop.dev

MAINTAINER =	Ian Sutton <ian@ce.gl>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses kvm m

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

post-install:
	rm -r ${PREFIX}/share/icons/

.include <bsd.port.mk>
