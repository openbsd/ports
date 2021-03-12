# $OpenBSD: Makefile,v 1.26 2021/03/12 09:02:26 sthen Exp $

COMMENT-main=	hierarchical memory pool system with destructors
COMMENT-python=	Python ${MODPY_VERSION} bindings for talloc

# Keep in sync with the version bundled in net/samba
V=		2.1.16
DISTNAME=	talloc-$V
PKGNAME-main=	lib${DISTNAME}
PKGNAME-python=	py-${DISTNAME}
REVISION=	1
MULTI_PACKAGES=	-main -python

SHARED_LIBS+=	talloc		1.1
SHARED_LIBS+=	pytalloc-util	0.1

CATEGORIES=	devel

HOMEPAGE=	https://talloc.samba.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB-main=	# empty
WANTLIB-python=	intl m pthread talloc util ${MODPY_WANTLIB}

MASTER_SITES=	https://download.samba.org/pub/talloc/

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
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
CONFIGURE_ARGS= --prefix='${PREFIX}' --mandir="${PREFIX}/man" \
		--disable-rpath

.include <bsd.port.mk>
