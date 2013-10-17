# $OpenBSD: Makefile,v 1.5 2013/10/17 20:58:28 jca Exp $

BROKEN-arm =		erratic runtime behaviour

COMMENT =		mobile shell

DISTNAME =		mosh-1.2.4

REVISION =		1

CATEGORIES =		net

HOMEPAGE =		http://mosh.mit.edu/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m ncursesw protobuf pthread ssl stdc++ util
WANTLIB +=		z

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/protobuf

MAKE_FLAGS =		CPPFLAGS='-Dbe16toh=betoh16 -Dbe64toh=betoh64'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
# --enable-hardening forces PIE on, which doesn't work on all arches
# pick only ld(1) -z now to match upstream
CONFIGURE_ARGS =	--disable-hardening
CONFIGURE_ENV =		ac_cv_have_decl_htobe64=yes LDFLAGS="-Wl,-z,now"

.include <bsd.port.mk>
