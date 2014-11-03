# $OpenBSD: Makefile,v 1.6 2014/11/03 04:23:10 bcallah Exp $

SHARED_ONLY =		Yes

COMMENT =		high-speed character set detection library

DISTNAME =		libguess-1.2
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS =		guess		1.0	# 1.2

CATEGORIES =		devel

HOMEPAGE =		http://atheme.org/projects/libguess.html
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://rabbit.dereferenced.org/~nenolod/distfiles/

MAKE_ENV =		LIB_MAJOR=${LIBguess_VERSION:R} \
			LIB_MINOR=${LIBguess_VERSION:E}

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
