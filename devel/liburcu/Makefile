# $OpenBSD: Makefile,v 1.20 2019/06/22 22:44:06 jca Exp $

COMMENT =		user-level RCU implementation

DISTNAME =		userspace-rcu-0.10.2
PKGNAME =		liburcu-0.10.2

SHARED_LIBS +=  urcu-bp                   1.0 # 6.0
SHARED_LIBS +=  urcu-cds                  1.0 # 6.0
SHARED_LIBS +=  urcu-common               1.0 # 6.0
SHARED_LIBS +=  urcu-mb                   1.0 # 6.0
SHARED_LIBS +=  urcu-qsbr                 1.0 # 6.0
SHARED_LIBS +=  urcu-signal               1.0 # 6.0
SHARED_LIBS +=  urcu                      1.0 # 6.0

CATEGORIES =		devel

HOMEPAGE =		https://liburcu.org/

MAINTAINER = 		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

MASTER_SITES =		https://lttng.org/files/urcu/
EXTRACT_SUFX =		.tar.bz2

# For atomic builtins
MODULES+=		gcc4
MODGCC4_ARCHS=		alpha hppa

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
# Thread-local storage emulation from clang or lang/gcc doesn't work in
# regress tests.
CONFIGURE_ENV =		ac_cv_tls=none

.include <bsd.port.mk>
