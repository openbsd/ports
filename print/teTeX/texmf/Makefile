# $OpenBSD: Makefile,v 1.23 2006/11/23 19:31:34 espie Exp $

COMMENT-main=	"TeX distribution, common support files"
COMMENT-doc=	"TeX distribution, documentation"

V=		3.0
DISTNAME=	tetex-texmf-${V}
PKGNAME-main=	teTeX_texmf-${V}p1
PKGNAME-doc=	teTeX_texmf-doc-${V}p1
CATEGORIES=	print

WRKDIST=	${WRKDIR}

MULTI_PACKAGES=	-main -doc

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PERMIT_PACKAGE_FTP-doc=	"Removed for space constraints"

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR}; \
	for i in ${DISTFILES:S,:0,,}; do \
		tar zxf ${FULLDISTDIR}/$${i}; \
	done
	@perl -pi -e "s/zcat/gzcat/" ${TEXMF_DIR}/dvipdfm/config/config

.include <bsd.port.mk>
