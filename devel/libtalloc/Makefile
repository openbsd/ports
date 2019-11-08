# $OpenBSD: Makefile,v 1.22 2019/11/08 19:44:31 jca Exp $

COMMENT=	hierarchical memory pool system with destructors

# Keep in sync with the version bundled in net/samba
DISTNAME=	talloc-2.1.14
PKGNAME=	lib${DISTNAME}
REVISION=	0

SHARED_LIBS+=	talloc		1.1
SHARED_LIBS+=	pytalloc-util	0.1

CATEGORIES=	devel

HOMEPAGE=	https://talloc.samba.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += intl m pthread util ${MODPY_WANTLIB}

MASTER_SITES=	https://filedump.se.rit.edu/pub/distfiles/ \
		https://download.samba.org/pub/talloc/

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES= buildtools/bin/waf

BUILD_DEPENDS=	textproc/docbook-xsl \
		textproc/libxslt

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

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
