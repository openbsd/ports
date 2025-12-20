COMMENT =		minimal CGI library for web applications

DISTNAME =		kcgi-1.0.1
CATEGORIES =		www

SHARED_LIBS +=		kcgi		1.1 # 1.1
SHARED_LIBS +=		kcgihtml	1.1 # 1.1
SHARED_LIBS +=		kcgijson	1.1 # 1.1
SHARED_LIBS +=		kcgiregress	1.1 # 1.1
SHARED_LIBS +=		kcgixml		1.1 # 1.1

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/kcgi/
SITES =			${HOMEPAGE}snapshots/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c z

CONFIGURE_STYLE =	simple
MAKE_FLAGS =		PREFIX="${PREFIX}"

TEST_DEPENDS =		net/curl
TEST_TARGET =		regress

.include <bsd.port.mk>
