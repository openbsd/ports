COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.10
REVISION =	0

CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

# LGPLv3
PERMIT_PACKAGE =		Yes

WANTLIB += c curl glib-2.0 gthread-2.0 intl sqlite3

MODULES =	devel/cmake

LIB_DEPENDS +=	net/curl \
		databases/sqlite3 \
		devel/glib2

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

NO_TEST =	Yes

# ensure the one generated in the builddir is picked up
post-configure:
	cp ${WRKBUILD}/lib/config.h ${WRKSRC}/lib/config.h

.include <bsd.port.mk>
