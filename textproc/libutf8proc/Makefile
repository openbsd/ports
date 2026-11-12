COMMENT =		unicode library

GH_ACCOUNT =		JuliaStrings
GH_PROJECT =		utf8proc
GH_TAGNAME =		v2.12.0
PKGNAME =		lib${DISTNAME}

CATEGORIES =		textproc
SHARED_LIBS =		utf8proc 2.3 # 3.1

UNICODE_VERSION =	18.0.0
SITES.test =		https://www.unicode.org/Public/${UNICODE_VERSION}/ucd/
DISTFILES.test =	ucd${UNICODE_VERSION}-{}NormalizationTest.txt \
			ucd${UNICODE_VERSION}-{auxiliary/}GraphemeBreakTest.txt
EXTRACT_ONLY =		${DISTFILES}

HOMEPAGE =		https://juliastrings.github.io/utf8proc/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=On \
			-DUTF8PROC_ENABLE_TESTING=On

post-configure:
	mkdir ${WRKBUILD}/data
.for i in NormalizationTest GraphemeBreakTest
	cp ${FULLDISTDIR}/ucd${UNICODE_VERSION}-$i.txt ${WRKBUILD}/data/$i.txt
.endfor

.include <bsd.port.mk>
