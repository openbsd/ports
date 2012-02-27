# $OpenBSD: Makefile,v 1.2 2012/02/27 18:53:45 shadchin Exp $

SHARED_ONLY =		Yes

COMMENT =		high-speed character set detection library

DISTNAME =		libguess-1.1

SHARED_LIBS =		guess		0.0	# 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.atheme.org/project/libguess

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		mowgli

MASTER_SITES =		http://distfiles.atheme.org/

LIB_DEPENDS =		devel/mowgli

MAKE_ENV =		LIB_MAJOR=${LIBguess_VERSION:R} \
			LIB_MINOR=${LIBguess_VERSION:E}

CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
