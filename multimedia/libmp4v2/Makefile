# $OpenBSD: Makefile,v 1.14 2017/07/23 09:26:28 espie Exp $

COMMENT =		read and manipulate the MP4 container format

DISTNAME =		mp4v2-1.9.1
PKGNAME =		lib${DISTNAME}
REVISION =		2
CATEGORIES =		multimedia audio

SHARED_LIBS =		mp4v2	4.0 #1.9

HOMEPAGE =		https://code.google.com/p/mp4v2/

# MPLv1.1
PERMIT_PACKAGE_CDROM =	Patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=mp4v2/}
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/help2man
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
