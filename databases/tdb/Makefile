# $OpenBSD: Makefile,v 1.34 2021/02/23 19:39:12 sthen Exp $

COMMENT-main=	trivial database library
COMMENT-python=	Python ${MODPY_VERSION} bindings for tdb

# Keep in sync with the version bundled in net/samba
DISTNAME=	tdb-1.3.18
PKGNAME-main=	${DISTNAME}
REVISION-main=	0
PKGNAME-python=	py-${DISTNAME}
MULTI_PACKAGES=	-main -python

# 0750 on Makefile and other files breaks update-patches with PORTS_PRIVSEP=Yes
FIX_EXTRACT_PERMISSIONS=	Yes

SHARED_LIBS+=	tdb	4.4

CATEGORIES=	databases

HOMEPAGE=	https://tdb.samba.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB-main=	c pthread
WANTLIB-python=	intl m pthread tdb util ${MODPY_WANTLIB}

MASTER_SITES=	https://download.samba.org/pub/tdb/

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP=	No
MODPY_ADJ_FILES= buildtools/bin/waf

BUILD_DEPENDS=	textproc/docbook-xsl \
		textproc/libxslt

LIB_DEPENDS-python=	${BUILD_PKGPATH} \
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
	 ${MODPY_BIN} -m compileall ${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
