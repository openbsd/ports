# $OpenBSD: Makefile,v 1.8 2016/03/16 21:19:38 naddy Exp $

COMMENT =		high-speed character set detection library

DISTNAME =		libguess-1.2
EXTRACT_SUFX =		.tar.bz2
REVISION =		0

SHARED_LIBS =		guess		1.0	# 1.2

CATEGORIES =		devel

HOMEPAGE =		http://atheme.org/projects/libguess.html

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://rabbit.dereferenced.org/~nenolod/distfiles/

MAKE_ENV =		LIB_MAJOR=${LIBguess_VERSION:R} \
			LIB_MINOR=${LIBguess_VERSION:E}

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
