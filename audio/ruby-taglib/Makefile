COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	2.0.0
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
CATEGORIES =	audio

HOMEPAGE =	https://robinst.github.io/taglib-ruby/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB = 		${COMPILER_LIBCXX} tag

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

LIB_DEPENDS =		audio/taglib>=2.0.2

# Tests depend on unported ruby library (shoulda-context)

.include <bsd.port.mk>
