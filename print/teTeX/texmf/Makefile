# $OpenBSD: Makefile,v 1.8 2000/09/13 14:22:09 avsm Exp $
# Original from: Marc Espie

PKGNAME=	teTeX_texmf-1.0.2

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

CATEGORIES=	print/teTeX
NEED_VERSION=	1.330

HOMEPAGE=	http://tug.cs.umb.edu/tetex/
MAINTAINER=	espie@openbsd.org avsm@openbsd.org

DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_TEXMF}
TETEX_TEXMF=	teTeX-texmf-1.0.2.tar.gz

WRKDIST=	${WRKDIR}
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes

TEXMF_DIR=	${PREFIX}/share/texmf

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && tar zxf ${FULLDISTDIR}/${TETEX_TEXMF}

.include <bsd.port.mk>
