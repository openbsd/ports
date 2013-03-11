# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:44 espie Exp $

COMMENT =		read and manipulate the MP4 container format

DISTNAME =		mp4v2-1.9.1
PKGNAME =		lib${DISTNAME}
REVISION =		0
CATEGORIES =		multimedia audio

SHARED_LIBS =		mp4v2	4.0 #1.9

HOMEPAGE =		https://code.google.com/p/mp4v2/

# MPLv1.1
PERMIT_PACKAGE_CDROM =	Patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		https://mp4v2.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/help2man
USE_LIBTOOL =		Yes
USE_GROFF =		Yes
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
