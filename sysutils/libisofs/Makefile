# $OpenBSD: Makefile,v 1.1.1.1 2017/12/19 20:17:30 landry Exp $

COMMENT =	library to create and edit an ISO-9660 filesystem

DISTNAME =	libisofs-1.4.8
SHARED_LIBS +=  isofs 0.0 # 90.0

CATEGORIES =	sysutils

HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libisofs
MASTER_SITES =	http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	iconv pthread z
LIB_DEPENDS =		converters/libiconv
USE_LIBTOOL =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
