COMMENT =	generic C framework used by the Icecast project

DISTNAME =	libigloo-0.9.5

SHARED_LIBS +=  igloo                     0.0 # 0.0

CATEGORIES =	devel

HOMEPAGE =	https://icecast.org/download/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread rhash

SITES =			https://ftp.osuosl.org/pub/xiph/releases/igloo/

LIB_DEPENDS =		security/rhash

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
