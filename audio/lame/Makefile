# $OpenBSD: Makefile,v 1.9 2001/08/01 19:29:09 jakob Exp $

COMMENT=	"Lame Ain't an MP3 Encoder"

VERSION=	3.89

DISTNAME=	lame${VERSION}beta
PKGNAME=	lame-${VERSION}beta
CATEGORIES=	audio
NEED_VERSION=	1.364

MASTER_SITES=		ftp://lame.sourceforge.net/pub/lame/src/

HOMEPAGE=	http://www.sulaco.org/mp3/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/lame-${VERSION}
USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-mp3rtp

.if ${FLAVOR:L} != "no_x11"
CONFIGURE_ARGS+=	--enable-mp3x
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/frontend/lame ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/frontend/mp3rtp ${PREFIX}/bin
.if ${FLAVOR:L} != "no_x11"
	${INSTALL_PROGRAM} ${WRKBUILD}/frontend/mp3x ${PREFIX}/bin
.endif
	${INSTALL_MAN} ${WRKBUILD}/doc/man/lame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.css  ${PREFIX}/share/doc/lame

.include <bsd.port.mk>
