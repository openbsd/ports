# Makefile for:		figlet
# Version required:	2.2
# Date created:		15 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/10/09 00:18:49 avsm Exp $

PKGNAME=	figlet-2.2
DISTNAME=	figlet22
CATEGORIES=	misc graphics
NEED_VERSION=	1.338

HOMEPAGE=	http://st-www.cs.uiuc.edu/users/chai/figlet.html
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.internexus.net/pub/figlet/program/unix/ \
		ftp://ftp.plig.org/pub/figlet/program/unix/

MASTER_SITES0=	http://www.internexus.net/pub/figlet/fonts/ \
		ftp://ftp.plig.org/pub/figlet/fonts/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} contributed${EXTRACT_SUFX}:0
MAKE_FLAGS=	CFLAGS=${CFLAGS} DEFAULTFONTDIR=${PREFIX}/share/figlet

post-extract:
	@(mv ${WRKDIR}/contributed/*.{flf,flc} ${WRKSRC}/fonts)
	@(mv ${WRKDIR}/contributed/bdffonts/*.flf ${WRKSRC}/fonts)

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
