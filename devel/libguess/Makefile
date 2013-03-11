# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:10 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		high-speed character set detection library

DISTNAME =		libguess-1.1

SHARED_LIBS =		guess		0.0	# 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.atheme.org/project/libguess

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
