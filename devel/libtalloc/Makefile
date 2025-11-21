COMMENT-main=	hierarchical memory pool system with destructors
COMMENT-python=	Python ${MODPY_VERSION} bindings for talloc

# Keep in sync with the version bundled in net/samba
V=		2.4.3
REVISION=	0

DISTNAME=	talloc-$V
PKGNAME-main=	lib${DISTNAME}
PKGNAME-python=	py3-${DISTNAME}

MULTI_PACKAGES=	-main -python

SHARED_LIBS+=	talloc		1.2
SHARED_LIBS+=	${PYTALLOC_UTIL_LIBNAME}	0.0

PYTALLOC_UTIL_LIBNAME =		pytalloc-util.cpython-${MODPY_MAJORMINOR}
SUBST_VARS+=	PYTALLOC_UTIL_LIBNAME

CATEGORIES=	devel

HOMEPAGE=	https://talloc.samba.org/

MAINTAINER=	Ian McWilliam <kaosagnt@gmail.com>, \
		Bjorn Ketelaars <bket@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

# Needs thread-local storage
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB-main=	# empty
WANTLIB-python=	intl m pthread talloc util ${MODPY_WANTLIB}

SITES=		https://download.samba.org/pub/talloc/

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES= buildtools/bin/waf

BUILD_DEPENDS=	textproc/docbook-xsl \
		textproc/libxslt

LIB_DEPENDS-python=	${BUILD_PKGPATH},-main=${V} \
			${MODPY_LIB_DEPENDS}

WAF_ARGS=	-v -j ${MAKE_JOBS}
MAKE_FLAGS=	WAF_ARGS="${WAF_ARGS}"
MAKE_ENV +=	LIBtalloc_VERSION=${LIBtalloc_VERSION}
MAKE_ENV +=	LIBpytalloc_util_cpython_${MODPY_MAJORMINOR}_VERSION=${LIB${PYTALLOC_UTIL_LIBNAME}_VERSION}

TEST_ENV=	LD_LIBRARY_PATH="${WRKSRC}/bin/default"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= --prefix='${PREFIX}' --mandir="${PREFIX}/man" \
		--disable-rpath

.include <bsd.port.mk>
