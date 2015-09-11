# $OpenBSD: Makefile,v 1.6 2015/09/11 11:47:41 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.2.4.95rc2

CATEGORIES =		net

HOMEPAGE =		http://mosh.mit.edu/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m ncursesw protobuf pthread ssl stdc++ util
WANTLIB +=		z

MASTER_SITES =		https://github.com/keithw/mosh/archive/

LIB_DEPENDS =		devel/protobuf

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf automake
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
# --enable-hardening forces PIE on, which doesn't work on all arches
# pick only ld(1) -z now to match upstream
CONFIGURE_ARGS =	--disable-hardening
CONFIGURE_ENV =		LDFLAGS="-Wl,-z,now ${LDFLAGS}"

WRKDIST =		${WRKDIR}/mosh-${DISTNAME}

post-patch:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    ./autogen.sh

.include <bsd.port.mk>
