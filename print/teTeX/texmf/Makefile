# $OpenBSD: Makefile,v 1.17 2003/04/04 21:19:23 sturm Exp $

COMMENT=	"TeX distribution, common support files"

DISTNAME=	tetex-texmf-2.0.2
PKGNAME=	${DISTNAME:S/tetex-/teTeX_/}
CATEGORIES=	print

WRKDIST=	${WRKDIR}

# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@perl -pi -e "s/zcat/gzcat/" ${TEXMF_DIR}/dvipdfm/config/config

.include <bsd.port.mk>
