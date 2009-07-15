# $OpenBSD: Makefile,v 1.3 2009/07/15 13:45:17 landry Exp $

COMMENT =	data recovery software

VERSION =	6.11
DISTNAME =	testdisk-${VERSION}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.cgsecurity.org/
MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		converters/libiconv

SUBST_VARS +=		VERSION

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/uuid -L${LOCALBASE}/lib"

LIB_DEPENDS =		ext2fs,ext2fs_com_err::sysutils/e2fsprogs,-main \
			lib/uuid/uuid::sysutils/e2fsprogs,-uuid \
			jpeg::graphics/jpeg

WANTLIB =		c crypto ncurses z

.include <bsd.port.mk>
