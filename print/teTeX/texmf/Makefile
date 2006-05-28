# $OpenBSD: Makefile,v 1.22 2006/05/28 18:26:56 sturm Exp $

COMMENT=	"TeX distribution, common support files"
COMMENT-doc=	"TeX distribution, documentation"

V=		3.0
DISTNAME=	tetex-texmf-${V}
PKGNAME=	teTeX_texmf-${V}p0
PKGNAME-doc=	teTeX_texmf-doc-${V}p1
CATEGORIES=	print

WRKDIST=	${WRKDIR}

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

.if defined(PACKAGING) && ${SUBPACKAGE} == "-doc"
PERMIT_PACKAGE_FTP=	"Removed for space constraints"
.endif

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR}; \
	for i in ${DISTFILES:S,:0,,}; do \
		tar zxf ${FULLDISTDIR}/$${i}; \
	done
	@perl -pi -e "s/zcat/gzcat/" ${TEXMF_DIR}/dvipdfm/config/config

.include <bsd.port.mk>
