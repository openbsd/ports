# $OpenBSD: Makefile,v 1.2 2017/07/01 15:13:10 ajacoutot Exp $

COMMENT =	ISO 9660 Rock Ridge Filesystem Manipulator

DISTNAME =	xorriso-1.4.6
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://www.gnu.org/software/xorriso/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c curses pthread readline z bz2 iconv

MASTER_SITES =		${MASTER_SITE_GNU:=xorriso/}

LIB_DEPENDS =		archivers/bzip2 \
			converters/libiconv

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
