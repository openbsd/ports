# $OpenBSD: Makefile,v 1.2 1998/09/14 02:55:42 marc Exp $
#

DISTNAME=	imm-3.5a1
CATEGORIES=	mbone tk80
MASTER_SITES=	ftp://ftp.hawaii.edu/paccom/imm-3.5a1/
DISTFILES=	imm.source.tar.Z
WRKSRC=		${WRKDIR}/mnm

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80\\.1:${PORTSDIR}/x11/tk80

USE_X11=	yes

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
	${MKDIR} ${PREFIX}/share/doc/imm
.if !defined(NOPORTDOCS)
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/imm
	${INSTALL_DATA} ${WRKSRC}/imm_readme.txt ${PREFIX}/share/doc/imm
.endif
# The sdr plugin is pretty much required.
	${INSTALL_DATA} ${WRKSRC}/sdr2.plugin.S53.image.imm ${PREFIX}/share/doc/imm

.include <bsd.port.mk>
