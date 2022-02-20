# $OpenBSD: Makefile,v 1.23 2022/02/20 18:27:35 jca Exp $

COMMENT =		user-level RCU implementation

DISTNAME =		userspace-rcu-0.13.1
PKGNAME =		liburcu-0.13.1

SHARED_LIBS +=  urcu-bp                   2.0 # 8.0
SHARED_LIBS +=  urcu-cds                  2.0 # 8.0
SHARED_LIBS +=  urcu-common               2.0 # 8.0
SHARED_LIBS +=  urcu-mb                   2.0 # 8.0
SHARED_LIBS +=  urcu-memb                 0.0 # 8.0
SHARED_LIBS +=  urcu-qsbr                 1.0 # 8.0
SHARED_LIBS +=  urcu-signal               2.0 # 8.0
SHARED_LIBS +=  urcu                      2.0 # 8.0

CATEGORIES =		devel

HOMEPAGE =		https://liburcu.org/

MAINTAINER = 		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

MASTER_SITES =		https://lttng.org/files/urcu/
EXTRACT_SUFX =		.tar.bz2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# atomics, TLS (__thread)
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
