# $OpenBSD: Makefile,v 1.16 2018/11/27 07:40:21 jca Exp $

COMMENT =		user-level RCU implementation

DISTNAME =		userspace-rcu-0.8.9
PKGNAME =		liburcu-0.8.9
REVISION =		1

SHARED_LIBS +=  urcu-bp                   0.0 # 2.0
SHARED_LIBS +=  urcu-cds                  0.0 # 2.0
SHARED_LIBS +=  urcu-common               0.0 # 2.0
SHARED_LIBS +=  urcu-mb                   0.0 # 2.0
SHARED_LIBS +=  urcu-qsbr                 0.0 # 2.0
SHARED_LIBS +=  urcu-signal               0.0 # 2.0
SHARED_LIBS +=  urcu                      0.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		https://liburcu.org/

MAINTAINER = 		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

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
