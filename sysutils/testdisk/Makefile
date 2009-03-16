# $OpenBSD: Makefile,v 1.2 2009/03/16 10:46:52 landry Exp $

COMMENT =	data recovery software

VERSION =	6.10
DISTNAME =	testdisk-${VERSION}
PKGNAME =	${DISTNAME}p0
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

WANTLIB =		c ncurses z

.include <bsd.port.mk>
