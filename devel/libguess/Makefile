# $OpenBSD: Makefile,v 1.5 2014/10/10 12:12:29 dcoppa Exp $

SHARED_ONLY =		Yes

COMMENT =		high-speed character set detection library

DISTNAME =		libguess-1.1

REVISION =		1

SHARED_LIBS =		guess		0.0	# 1.0

CATEGORIES =		devel

HOMEPAGE =		http://atheme.org/projects/libguess.html

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		mowgli

MASTER_SITES =		http://distfiles.atheme.org/

LIB_DEPENDS =		devel/mowgli

MAKE_ENV =		LIB_MAJOR=${LIBguess_VERSION:R} \
			LIB_MINOR=${LIBguess_VERSION:E}

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
