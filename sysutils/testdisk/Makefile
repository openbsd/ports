# $OpenBSD: Makefile,v 1.1.1.1 2009/03/15 20:11:01 landry Exp $

COMMENT =	data recovery software

VERSION =	6.10
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
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =		ext2fs,ext2fs_com_err::sysutils/e2fsprogs,-main \
			uuid::sysutils/e2fsprogs,-uuid \
			jpeg::graphics/jpeg

WANTLIB =		c ncurses z

.include <bsd.port.mk>
