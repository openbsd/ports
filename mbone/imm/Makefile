# $OpenBSD: Makefile,v 1.4 1999/09/02 22:16:29 brad Exp $

DISTNAME=	imm.source
PKGNAME=	imm-3.5a1
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.hawaii.edu/paccom/imm-3.5a1/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_X11=	yes

WRKSRC=		${WRKDIR}/mnm

post-extract:
	@${MKDIR} ${WRKSRC}/openbsd
	@${CP} ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@${CP} ${FILESDIR}/Makefile.openbsd ${WRKSRC}/src

# The included makefile doesn't have an "install" target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/imm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/immserv ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/lscomp ${PREFIX}/bin
# and no man pages at all yet.
# But include the very limited documentation
	@${MKDIR} ${PREFIX}/share/doc/imm
.if !defined(NOPORTDOCS)
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/imm
	${INSTALL_DATA} ${WRKSRC}/imm_readme.txt ${PREFIX}/share/doc/imm
.endif
# The sdr plugin is pretty much required.
	${INSTALL_DATA} ${WRKSRC}/sdr2.plugin.S53.image.imm ${PREFIX}/share/doc/imm

.include <bsd.port.mk>
