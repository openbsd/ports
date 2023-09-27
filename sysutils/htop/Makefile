COMMENT =	interactive process viewer

V =		3.2.2
DISTNAME =	htop-$V

CATEGORIES =	sysutils

EXTRACT_SUFX =	.tar.xz
HOMEPAGE =	https://htop.dev
SITES =		https://github.com/htop-dev/htop/releases/download/$V/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses execinfo kvm m

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats

post-install:
	rm -r ${PREFIX}/share/icons/

.include <bsd.port.mk>
