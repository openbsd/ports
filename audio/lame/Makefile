# $OpenBSD: Makefile,v 1.5 2000/10/04 21:54:10 jakob Exp $

DISTNAME=		lame3.86beta
PKGNAME=		lame-3.86beta
CATEGORIES=     	audio
NEED_VERSION=		1.326

MASTER_SITES=		http://www.sulaco.org/mp3/download/beta/ \
			http://lame.sourceforge.net/download/beta/

HOMEPAGE=		http://www.sulaco.org/mp3/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/lame3.86
USE_GMAKE=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
ALL_TARGET=		lame
MAKE_FLAGS+=		GTK= GTKLIBS=
.else
ALL_TARGET=		lame mp3x
LIB_DEPENDS=		gtk.1.2::x11/gtk+
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lame ${PREFIX}/bin
.if ${FLAVOR:L} != "no_x11"
	${INSTALL_PROGRAM} ${WRKBUILD}/mp3x ${PREFIX}/bin
.endif
	${INSTALL_MAN} ${WRKBUILD}/doc/man/lame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.css  ${PREFIX}/share/doc/lame

.include <bsd.port.mk>
