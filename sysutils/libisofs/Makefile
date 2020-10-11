# $OpenBSD: Makefile,v 1.3 2020/10/11 17:55:17 landry Exp $

COMMENT =	library to create and edit an ISO-9660 filesystem

DISTNAME =	libisofs-1.4.8
SHARED_LIBS +=  isofs 0.0 # 90.0

CATEGORIES =	sysutils

HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libisofs
MASTER_SITES =	http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	iconv pthread z
LIB_DEPENDS =		converters/libiconv
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
