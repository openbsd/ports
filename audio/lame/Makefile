# $OpenBSD: Makefile,v 1.2 2000/08/16 16:42:01 turan Exp $

DISTNAME=		lame3.85beta
PKGNAME=		lame-3.85beta
CATEGORIES=     	audio
NEED_VERSION=		1.302

MASTER_SITES=		http://www.sulaco.org/mp3/download/beta/ \
			http://lame.sourceforge.net/download/beta/

HOMEPAGE=		http://www.sulaco.org/mp3/

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk.1.2::x11/gtk+

WRKDIST=		${WRKDIR}/lame3.85
USE_GMAKE=		Yes
ALL_TARGET=		lame mp3x

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lame ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/mp3x ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/man/lame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.css  ${PREFIX}/share/doc/lame

.include <bsd.port.mk>
