# $OpenBSD: Makefile,v 1.31 2000/09/06 00:28:05 brad Exp $

VERSION=	3.9.8
DISTNAME=	screen-${VERSION}
CATEGORIES=	misc
NEED_VERSION=	1.324
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/

HOMEPAGE=	http://www.gnu.org/software/screen/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"

ALL_TARGET=	screen screen.info

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
	 ${PREFIX}/share/examples/screen/screenrc-sample
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap \
	 ${PREFIX}/share/examples/screen/screencap

.include <bsd.port.mk>
