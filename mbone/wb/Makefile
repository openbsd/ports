# $OpenBSD: Makefile,v 1.3 2000/02/10 23:14:32 espie Exp $
#

DISTNAME=       wb-1.59
CATEGORIES=	mbone
MASTER_SITES=   ftp://ftp.ee.lbl.gov/conferencing/wb/
DISTFILES=      i386-wb-1.59.tar.Z
ONLY_FOR_ARCHS=	i386
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

WRKDIST=	${WRKDIR}
NO_BUILD=	yes
USE_X11=	yes

# XXX ghostscript, ghostscript3, ghostscript4 or ghostscript5 will all do.
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

.if !defined(NO_WARNINGS)
pre-fetch:
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_BSDOS' and 'option COMPAT_43'"
	@echo "           for proper operation.  The GENERIC kernel contains"
	@echo "           these options."
	@echo ""
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wb ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/NOTES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/lblwb.ps ${PREFIX}/share/doc/wb
.endif

.include <bsd.port.mk>
