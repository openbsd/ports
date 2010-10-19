# $OpenBSD: Makefile,v 1.7 2010/10/19 07:43:04 espie Exp $

COMMENT =	data recovery software

VERSION =	6.11.3
DISTNAME =	testdisk-${VERSION}
REVISION =	1
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
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

LIB_DEPENDS =		e2fs-uuid,ext2fs,ext2fs_com_err::sysutils/e2fsprogs \
			jpeg::graphics/jpeg

WANTLIB =		c crypto ncurses z

.include <bsd.port.mk>
