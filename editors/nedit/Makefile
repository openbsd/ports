# $OpenBSD: Makefile,v 1.31 2006/11/04 19:19:15 kili Exp $
# $FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp $

COMMENT=		"X11/Motif GUI text editor"

DISTNAME=		nedit-5.5
DISTFILES=		${DISTNAME}-src.tar.gz
CATEGORIES=		editors x11

MASTER_SITES=		http://www.nedit.org/ftp/v5_5/ \
			${MASTER_SITE_SOURCEFORGE:=nedit/}

HOMEPAGE=		http://www.nedit.org/

MAINTAINER=		Damien Miller <djm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xp Xpm Xt c m

USE_MOTIF=		Any
ALL_TARGET=		openbsd

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nedit ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nc ${PREFIX}/bin/ncl
	${INSTALL_MAN} ${WRKSRC}/doc/nedit.man ${PREFIX}/man/man1/nedit.1
	${INSTALL_MAN} ${WRKSRC}/doc/nc.man ${PREFIX}/man/man1/ncl.1
	${INSTALL_DATA} ${WRKSRC}/doc/NEdit.ad \
		${PREFIX}/lib/X11/app-defaults/NEdit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	${INSTALL_DATA} ${WRKSRC}/doc/nedit.doc ${PREFIX}/share/doc/nedit

.include <bsd.port.mk>
