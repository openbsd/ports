# $OpenBSD: Makefile,v 1.5 2010/04/03 11:54:19 kili Exp $

COMMENT =	data recovery software

VERSION =	6.11.3
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
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =		e2fs-uuid,ext2fs,ext2fs_com_err::sysutils/e2fsprogs \
			jpeg::graphics/jpeg

WANTLIB =		c crypto ncurses z

.include <bsd.port.mk>
