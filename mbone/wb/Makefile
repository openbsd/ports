# $OpenBSD: Makefile,v 1.18 2002/12/23 00:37:51 pvalchev Exp $
#

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wb-1.59
CATEGORIES=	mbone

MASTER_SITES=   ftp://ftp.ee.lbl.gov/conferencing/wb/
DISTFILES=      i386-wb-1.59.tar.Z
ONLY_FOR_ARCHS=	i386

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_X11=	Yes

RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/NOTES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/lblwb.ps ${PREFIX}/share/doc/wb

.include <bsd.port.mk>
