# $OpenBSD: Makefile,v 1.14 2002/10/28 13:40:41 naddy Exp $
# Original from: Marc Espie

COMMENT=	"TeX distribution, common support files"

PKGNAME=	teTeX_texmf-1.0.2

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

CATEGORIES=	print/teTeX

HOMEPAGE=	http://www.tug.org/tetex/
MAINTAINER=	Marc Espie <espie@openbsd.org>, Anil Madhavapeddy <avsm@openbsd.org>

DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=systems/unix/teTeX/1.0/distrib/sources/}
DISTFILES=	${TETEX_TEXMF}
TETEX_TEXMF=	teTeX-texmf-1.0.2.tar.gz

WRKDIST=	${WRKDIR}
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

TEXMF_DIR=	${PREFIX}/share/texmf

do-install:
	@${INSTALL_DATA_DIR} ${TEXMF_DIR}
	@cd ${TEXMF_DIR} && tar zxf ${FULLDISTDIR}/${TETEX_TEXMF}

.include <bsd.port.mk>
