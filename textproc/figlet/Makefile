# $OpenBSD: Makefile,v 1.2 2000/04/09 17:38:23 espie Exp $

PKGNAME=		figlet-2.2
DISTNAME=		figlet22
CATEGORIES=		textproc graphics
FAKE=No
MASTER_SITES=		ftp://ftp.internexus.net/pub/figlet/program/unix/

MAINTAINER=		aaron@openbsd.org

HOMEPAGE=		http://st-www.cs.uiuc.edu/users/chai/figlet.html

LICENSE_TYPE=		ARTISTIC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=		CFLAGS=${CFLAGS}
MAKE_FLAGS+=		DEFAULTFONTDIR=${PREFIX}/share/figlet

MAN6=			figlet.6

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/figlet ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/showfigfonts ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/figlet
	${INSTALL_DATA} ${WRKSRC}/fonts/*.{flf,flc} ${PREFIX}/share/figlet
	${INSTALL_MAN} ${WRKSRC}/${MAN6} ${PREFIX}/man/man6

.include <bsd.port.mk>
