# $OpenBSD: Makefile,v 1.12 2002/08/26 23:38:15 avsm Exp $

COMMENT=	"generates ASCII banner art"

PKGNAME=	figlet-2.2.1
DISTNAME=	figlet221
CATEGORIES=	misc graphics

HOMEPAGE=	http://www.figlet.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.figlet.org/pub/figlet/program/unix/
MASTER_SITES0=	ftp://ftp.recoil.org/pub/figlet/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		figlet-contributed-24082002${EXTRACT_SUFX}:0
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" \
		DEFAULTFONTDIR=${PREFIX}/share/figlet

post-patch:
	@perl -pi -e 's|%%OPENBSDFIGLET%%|${LOCALBASE}/share/figlet|g' ${WRKBUILD}/figlist

post-extract:
	@mv ${WRKDIR}/contributed/*.{flf,flc} ${WRKSRC}/fonts
	@mv ${WRKDIR}/contributed/bdffonts/*.flf ${WRKSRC}/fonts
	
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/figlet ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/figlist ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/showfigfonts ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/figlet
	${INSTALL_DATA} ${WRKSRC}/fonts/*.{flf,flc} ${PREFIX}/share/figlet
	${INSTALL_MAN} ${WRKSRC}/figlet.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
