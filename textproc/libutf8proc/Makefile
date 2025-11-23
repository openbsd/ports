COMMENT =		unicode library

GH_ACCOUNT =		JuliaStrings
GH_PROJECT =		utf8proc
GH_TAGNAME =		v2.11.2
PKGNAME =		lib${DISTNAME}

HOMEPAGE =		https://juliastrings.github.io/utf8proc/

CATEGORIES =		textproc
SHARED_LIBS =		utf8proc 2.2 # 3.1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=On \
			-DUTF8PROC_ENABLE_TESTING=On

UNICODE_VERSION =	17.0.0
SITES.test =		https://www.unicode.org/Public/${UNICODE_VERSION}/ucd/
DISTFILES.test =	ucd${UNICODE_VERSION}-{}NormalizationTest.txt \
			ucd${UNICODE_VERSION}-{auxiliary/}GraphemeBreakTest.txt
EXTRACT_ONLY =		${DISTFILES}

post-configure:
	mkdir ${WRKBUILD}/data
.for i in NormalizationTest GraphemeBreakTest
	cp ${FULLDISTDIR}/ucd${UNICODE_VERSION}-$i.txt ${WRKBUILD}/data/$i.txt
.endfor

.include <bsd.port.mk>
