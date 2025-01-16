COMMENT =	ultralightweight JSON parser in ANSI C

GH_ACCOUNT =	DaveGamble
GH_PROJECT =	cJSON
GH_TAGNAME =	v1.7.18
REVISION =	0

PKGNAME =	${DISTNAME:L}

SHARED_LIBS +=	cjson	0.0	# 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	m

MODULES =	devel/cmake
DEBUG_PACKAGES = ${BUILD_PACKAGES}

# everything except tests (needs changing or removing if building cJSON_Utils)
ALL_TARGET =	cjson

# build whatever is left (ca. 43 C test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
