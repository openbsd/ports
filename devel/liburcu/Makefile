COMMENT =		user-level RCU implementation

V =			0.14.0
DISTNAME =		userspace-rcu-$V
PKGNAME =		liburcu-$V
REVISION =		1

SHARED_LIBS +=  urcu-bp                   3.0 # 9.0
SHARED_LIBS +=  urcu-cds                  2.1 # 9.0
SHARED_LIBS +=  urcu-common               2.0 # 9.0
SHARED_LIBS +=  urcu-mb                   3.0 # 9.0
SHARED_LIBS +=  urcu-memb                 1.0 # 9.0
SHARED_LIBS +=  urcu-qsbr                 2.0 # 9.0
SHARED_LIBS +=  urcu-signal               3.0 # 9.0
SHARED_LIBS +=  urcu                      3.0 # 9.0

CATEGORIES =		devel

HOMEPAGE =		https://liburcu.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

SITES =			https://lttng.org/files/urcu/
EXTRACT_SUFX =		.tar.bz2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# atomics, TLS (__thread), C++11
COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

TEST_DEPENDS +=		shells/bash

# Adjust shell scripts to allow Bash in other locations
# da56d5cad05a280a8171ef51f185e6d0d29610f0
post-extract:
	find ${WRKSRC}/tests -exec grep -q '/bin/bash' {} \; -print |\
		xargs sed -i "s#/bin/bash#/usr/bin/env bash#g"

.include <bsd.port.mk>
