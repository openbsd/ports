# $OpenBSD: Makefile,v 1.18 2016/04/12 17:38:15 jca Exp $

COMMENT=	trivial database library

# Keep in sync with the version bundled in net/samba4
DISTNAME=	tdb-1.3.7

SHARED_LIBS+=	tdb	4.1

CATEGORIES=	databases

HOMEPAGE=	https://tdb.samba.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread util ${MODPY_WANTLIB}

MASTER_SITES=	http://samba.org/ftp/tdb/

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES= buildtools/bin/waf

BUILD_DEPENDS=	textproc/docbook-xsl \
		textproc/libxslt

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

WAF_ARGS=	-v -j ${MAKE_JOBS}
MAKE_FLAGS=	WAF_ARGS="${WAF_ARGS}"
.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=             LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= --mandir="${PREFIX}/man" \
		--disable-rpath

.include <bsd.port.mk>
