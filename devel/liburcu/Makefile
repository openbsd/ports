# $OpenBSD: Makefile,v 1.5 2016/04/15 14:43:07 jca Exp $

BROKEN-arm =		undefined reference to __sync atomic ops
BROKEN-hppa =		undefined reference to __sync atomic ops

COMMENT =		user-level RCU implementation

GH_ACCOUNT =		urcu
GH_PROJECT =		userspace-rcu
GH_TAGNAME =		v0.8.6
DISTNAME =		liburcu-${GH_TAGNAME:S/^v//}

SHARED_LIBS +=  urcu-bp                   0.0 # 2.0
SHARED_LIBS +=  urcu-cds                  0.0 # 2.0
SHARED_LIBS +=  urcu-common               0.0 # 2.0
SHARED_LIBS +=  urcu-mb                   0.0 # 2.0
SHARED_LIBS +=  urcu-qsbr                 0.0 # 2.0
SHARED_LIBS +=  urcu-signal               0.0 # 2.0
SHARED_LIBS +=  urcu                      0.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		http://urcu.so/

MAINTAINER = 		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

# In-tree gcc fails to compile some of the atomic sequences on alpha.
MODULES+=		gcc4
MODGCC4_ARCHS=		alpha
MODGCC4_VERSION=	4.6

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool,-main

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && env ${MAKE_ENV} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf -vif

.include <bsd.port.mk>
