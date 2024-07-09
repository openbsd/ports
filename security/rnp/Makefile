COMMENT =	high performance C++ OpenPGP library and tools

GH_ACCOUNT =	rnpgp
GH_PROJECT =	rnp
GH_TAGNAME =	v0.17.1
SHARED_LIBS =	rnp 0.3

# upstream extracted libsexpp to a separate repo via submodule, need to use released tarball
SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	${DISTNAME:S/v//}
WRKSRC =	${WRKDIR}/${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://www.rnpgp.org/

# BSD / Apache v2 ?
PERMIT_PACKAGE=	Yes

# C++11
COMPILER =	base-clang ports-gcc

LIB_DEPENDS +=	security/botan2 \
		archivers/bzip2 \
		devel/json-c

WANTLIB +=	${COMPILER_LIBCXX} botan-2 bz2 c json-c m z

BUILD_DEPENDS =	textproc/asciidoctor \
		devel/gtest \
		security/gnupg

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

CONFIGURE_ARGS +=	-DGIT_EXECUTABLE=true \
			-DBUILD_SHARED_LIBS=on \
			-DDOWNLOAD_GTEST=Off \
			-DDOWNLOAD_RUBYRNP=Off

.include <bsd.port.mk>
