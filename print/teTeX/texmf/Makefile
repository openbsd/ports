# $OpenBSD: Makefile,v 1.15 2003/02/18 16:04:50 sturm Exp $

COMMENT=	"TeX distribution, common support files"

DISTNAME=	tetex-texmf-2.0.1
CATEGORIES=	print

WRKDIST=	${WRKDIR}

# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@perl -pi -e "s/zcat/gzcat/" ${TEXMF_DIR}/dvipdfm/config

.include <bsd.port.mk>
