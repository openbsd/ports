# $OpenBSD: Makefile,v 1.1.1.1 1998/09/14 02:38:43 marc Exp $
#

DISTNAME=       wb-1.59
CATEGORIES=	mbone
MASTER_SITES=   ftp://ftp.ee.lbl.gov/conferencing/wb/
DISTFILES=      i386-wb-1.59.tar.Z
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
USE_X11=	yes

# XXX ghostscript, ghostscript3, ghostscript4 or ghostscript5 will all do.
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

pre-fetch:
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_BSDOS' and 'option COMPAT_43'"
	@${ECHO} "           for proper operation.  The GENERIC kernel contains"
	@${ECHO} "           these options."
	@${ECHO} ""

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wb ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/NOTES ${PREFIX}/share/doc/wb
	${INSTALL_DATA} ${WRKSRC}/lblwb.ps ${PREFIX}/share/doc/wb
.endif

.include <bsd.port.mk>
