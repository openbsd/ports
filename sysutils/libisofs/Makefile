COMMENT =	library to create and edit an ISO-9660 filesystem

DISTNAME =	libisofs-1.5.6.pl01
PKGNAME =	libisofs-1.5.6pl1
WRKDIST =	${WRKDIR}/libisofs-1.5.6

SHARED_LIBS =	isofs 0.2 # 98.0

CATEGORIES =	sysutils
HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libisofs
SITES =		http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		iconv pthread z
LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

NO_TEST =		Yes

.include <bsd.port.mk>
