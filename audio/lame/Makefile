# $OpenBSD: Makefile,v 1.10 2001/08/26 11:26:51 fgsch Exp $

COMMENT=	"Lame Ain't an MP3 Encoder"

VERSION=	3.89

DISTNAME=	lame${VERSION}beta
PKGNAME=	lame-${VERSION}b
CATEGORIES=	audio
NEED_VERSION=	1.364

MASTER_SITES=	ftp://lame.sourceforge.net/pub/lame/src/

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
	${INSTALL_PROGRAM} ${WRKBUILD}/frontend/lame \
	  ${WRKBUILD}/frontend/mp3rtp ${PREFIX}/bin
.if ${FLAVOR:L} != "no_x11"
	${INSTALL_PROGRAM} ${WRKBUILD}/frontend/mp3x ${PREFIX}/bin
.endif
	${INSTALL_MAN} ${WRKBUILD}/doc/man/lame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html \
	  ${WRKBUILD}/doc/html/*.css ${PREFIX}/share/doc/lame
	${INSTALL_DATA} ${WRKBUILD}/include/lame.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libmp3lame/.libs/libmp3lame.a \
	  ${WRKBUILD}/libmp3lame/.libs/libmp3lame.la ${PREFIX}/lib

.include <bsd.port.mk>
