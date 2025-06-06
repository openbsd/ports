COMMENT-main=	trivial database library
COMMENT-python=	Python ${MODPY_VERSION} bindings for tdb

# Keep in sync with the version bundled in net/samba
V=		1.4.13

DISTNAME=	tdb-$V
PKGNAME-python=	py3-${DISTNAME}

MULTI_PACKAGES=	-main -python

# 0750 on Makefile and other files breaks update-patches with PORTS_PRIVSEP=Yes
FIX_EXTRACT_PERMISSIONS=	Yes

SHARED_LIBS+=	tdb	4.4

CATEGORIES=	databases

HOMEPAGE=	https://tdb.samba.org/

MAINTAINER=	Ian McWilliam <kaosagnt@gmail.com>, \
		Bjorn Ketelaars <bket@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

# Needs thread-local storage
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB-main=	c pthread
WANTLIB-python=	intl m pthread tdb util
# Extra
WANTLIB-python+=${MODPY_WANTLIB}

SITES=		https://download.samba.org/pub/tdb/

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
.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=	LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor
TEST_ENV=	LD_LIBRARY_PATH="${WRKSRC}/bin/default"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= --mandir="${PREFIX}/man" \
		--disable-rpath

post-install:
	${MODPY_COMPILEALL} ${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
