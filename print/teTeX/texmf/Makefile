# $OpenBSD: Makefile,v 1.4 2000/02/10 20:16:04 espie Exp $
# Original from: Marc Espie

NEED_VERSION=	1.116
PKGNAME=	teTeX_texmf-1.0

CATEGORIES=	print/teTeX
DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_TEXMF}
TETEX_TEXMF=	teTeX-texmf-1.0.tar.gz

WRKDIST=	${WRKDIR}
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_PATCH=	Yes
NO_CONFIGURE=	Yes
NO_BUILD=	Yes

TEXMF_DIR=	${PREFIX}/share/texmf

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && tar zxf ${FULLDISTDIR}/${TETEX_TEXMF}

.include <bsd.port.mk>
