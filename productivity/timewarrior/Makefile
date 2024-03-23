COMMENT =	command line tracking time tool

VERSION =	1.7.1
DISTNAME =	timew-${VERSION}
PKGNAME =	timewarrior-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	https://timewarrior.net/

# MIT
PERMIT_PACKAGE =		Yes

WANTLIB += c m ${COMPILER_LIBCXX}

SITES =		https://github.com/GothenburgBitFactory/timewarrior/releases/download/v${VERSION}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No

BUILD_DEPENDS =		textproc/asciidoctor
TEST_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTIMEW_DOCDIR=share/doc/timewarrior
CONFIGURE_ARGS +=	-DTIMEW_MAN1DIR=man/man1
CONFIGURE_ARGS +=	-DTIMEW_MAN7DIR=man/man7

do-test:
	${MODCMAKE_BUILD_TARGET} -t test

.include <bsd.port.mk>
