# $OpenBSD: Makefile,v 1.23 2006/10/18 09:50:53 jasper Exp $

COMMENT=	"Internet Image (or other data) Multicaster (and receiver)"

DISTNAME=	imm.source
PKGNAME=	imm-3.5a1
CATEGORIES=	mbone

EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m X11

LIB_DEPENDS=	tcl80.>=1.5:tcl-8.0.*:lang/tcl/8.0 \
		tk80.>=1.5:tk-8.0.*:x11/tk/8.0

USE_X11=	Yes

WRKDIST=	${WRKDIR}/mnm

NO_REGRESS=	Yes

post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/openbsd
	@cp ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/src

# The included makefile doesn't have an "install" target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/imm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/immserv ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/lscomp ${PREFIX}/bin
# and no man pages at all yet.
# But include the very limited documentation
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/imm
	${INSTALL_DATA} ${WRKSRC}/imm_readme.txt ${PREFIX}/share/doc/imm
# The sdr plugin is pretty much required.
	${INSTALL_DATA} ${WRKSRC}/sdr2.plugin.S53.image.imm ${PREFIX}/share/doc/imm

.include <bsd.port.mk>
