# $OpenBSD: Makefile,v 1.3 2017/07/01 23:10:35 uaa Exp $

COMMENT =	ISO 9660 Rock Ridge Filesystem Manipulator

DISTNAME =	xorriso-1.4.6

CATEGORIES =	sysutils

HOMEPAGE =	https://www.gnu.org/software/xorriso/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c curses pthread readline z bz2 iconv

MASTER_SITES =		${MASTER_SITE_GNU:=xorriso/}

LIB_DEPENDS =		archivers/bzip2 \
			converters/libiconv

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
