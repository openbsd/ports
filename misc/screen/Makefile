# $OpenBSD: Makefile,v 1.36 2001/09/04 14:56:27 brad Exp $

COMMENT=	"multi-screen window manager"

VERSION=	3.9.10
DISTNAME=	screen-${VERSION}
CATEGORIES=	misc
NEED_VERSION=	1.435
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/

HOMEPAGE=	http://www.gnu.org/software/screen/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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

.include <bsd.port.mk>
