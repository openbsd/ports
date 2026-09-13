COMMENT =		user-level RCU implementation

V =			0.15.7
DISTNAME =		userspace-rcu-$V
EXTRACT_SUFX =		.tar.bz2

PKGNAME =		liburcu-$V

SHARED_LIBS +=  urcu-bp                   3.1 # 10.0
SHARED_LIBS +=  urcu-cds                  2.1 # 10.0
SHARED_LIBS +=  urcu-common               2.0 # 10.0
SHARED_LIBS +=  urcu-mb                   3.1 # 10.0
SHARED_LIBS +=  urcu-memb                 1.1 # 10.0
SHARED_LIBS +=  urcu-qsbr                 2.1 # 10.0
SHARED_LIBS +=  urcu                      3.1 # 10.0

CATEGORIES =		devel

HOMEPAGE =		https://liburcu.org/
SITES =			https://lttng.org/files/urcu/

MAINTAINER =		Stuart Henderson <stu.ports@spacehopper.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# atomics, TLS (__thread), C++11 (in tests)
COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

TEST_DEPENDS +=		lang/gawk

pre-test:
	ln -s ${LOCALBASE}/bin/gawk ${WRKDIR}/bin/awk

.include <bsd.port.mk>
