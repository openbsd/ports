# $OpenBSD: Makefile,v 1.19 2004/02/01 20:40:46 sturm Exp $

COMMENT=	"TeX distribution, common support files"

DISTNAME=	tetex-texmf-2.0.2
PKGNAME=	${DISTNAME:S/tetex-/teTeX_/}p0
CATEGORIES=	print

MASTER_SITES0=	ftp://ftp.erisiandiscord.de/pub/OpenBSD/distfiles/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} listings-1.1.tar.gz:0

WRKDIST=	${WRKDIR}

# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR}; \
	for i in ${DISTFILES:S,:0,,}; do \
		tar zxf ${FULLDISTDIR}/$${i}; \
	done
	@perl -pi -e "s/zcat/gzcat/" ${TEXMF_DIR}/dvipdfm/config/config

.include <bsd.port.mk>
