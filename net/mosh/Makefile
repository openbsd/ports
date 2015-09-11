# $OpenBSD: Makefile,v 1.7 2015/09/11 17:57:13 jca Exp $

COMMENT =		mobile shell

DISTNAME =		mosh-1.2.5

CATEGORIES =		net

HOMEPAGE =		http://mosh.mit.edu/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m ncursesw protobuf pthread ssl stdc++ util
WANTLIB +=		z

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/protobuf

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
# --enable-hardening forces PIE on, which doesn't work on all arches
# pick only ld(1) -z now to match upstream
CONFIGURE_ARGS =	--disable-hardening
CONFIGURE_ENV =		LDFLAGS="-Wl,-z,now ${LDFLAGS}"

.include <bsd.port.mk>
