# $OpenBSD: Makefile,v 1.9 2000/03/18 00:28:50 turan Exp $

DISTNAME=	imm.source
PKGNAME=	imm-3.5a1
CATEGORIES=	mbone
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.hawaii.edu/paccom/imm-3.5a1/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80.1.5:lang/tcl80 \
		tk80.1.5:x11/tk80

USE_X11=	Yes

WRKDIST=		${WRKDIR}/mnm

post-extract:
	@mkdir -p ${WRKSRC}/openbsd
	@cp ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/src

# The included makefile doesn't have an "install" target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/imm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/immserv ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/lscomp ${PREFIX}/bin
# and no man pages at all yet.
# But include the very limited documentation
	@mkdir -p ${PREFIX}/share/doc/imm
.if !defined(NOPORTDOCS)
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/imm
	${INSTALL_DATA} ${WRKSRC}/imm_readme.txt ${PREFIX}/share/doc/imm
.endif
# The sdr plugin is pretty much required.
	${INSTALL_DATA} ${WRKSRC}/sdr2.plugin.S53.image.imm ${PREFIX}/share/doc/imm

.include <bsd.port.mk>
