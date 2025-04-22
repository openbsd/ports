COMMENT =		unicode library

V =			2.10.0
DISTNAME =		utf8proc-$V
PKGNAME =		libutf8proc-$V

HOMEPAGE =		https://juliastrings.github.io/utf8proc/
SITES =			https://github.com/JuliaStrings/utf8proc/releases/download/v$V/

CATEGORIES =		textproc
SHARED_LIBS =		utf8proc 2.2 # 3.1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=On

# requires extra files downloaded by cmake
NO_TEST =		Yes

.include <bsd.port.mk>
