# $OpenBSD: Makefile,v 1.3 1999/12/01 15:32:57 espie Exp $
# Original from: Marc Espie

NEED_VERSION=	1.116
PKGNAME=	teTeX_texmf-1.0

CATEGORIES=	print/teTeX
DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_TEXMF}
TETEX_TEXMF=	teTeX-texmf-1.0.tar.gz

NO_WRKSUBDIR=	yes
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_PATCH=	yes
NO_CONFIGURE=	yes
NO_BUILD=yes

TEXMF_DIR=	${PREFIX}/share/texmf

do-install:
	@${MKDIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && ${TAR} zxf ${FULLDISTDIR}/${TETEX_TEXMF}

.include <bsd.port.mk>
