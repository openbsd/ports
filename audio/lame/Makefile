# $OpenBSD: Makefile,v 1.6 2001/01/01 19:48:42 jakob Exp $

DISTNAME=		lame3.87beta
PKGNAME=		lame-3.87beta
CATEGORIES=     	audio
NEED_VERSION=		1.326

MASTER_SITES=		ftp://lame.sourceforge.net/pub/lame/src/

HOMEPAGE=		http://www.sulaco.org/mp3/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/lame3.87
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

ALL_TARGET=		all

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--enable-analyzer=no
.else
CONFIGURE_ARGS+=	--enable-analyzer=yes
LIB_DEPENDS=		gtk.1.2::x11/gtk+
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lame ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/man/lame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.css  ${PREFIX}/share/doc/lame

.include <bsd.port.mk>
