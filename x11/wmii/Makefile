# $OpenBSD: Makefile,v 1.6 2007/06/17 09:06:03 steven Exp $

COMMENT=	"dynamic window manager"

DISTNAME=	wmii-3.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	X11 c m

USE_X11=	Yes

NO_REGRESS=	Yes

FAKE_FLAGS=	SYSCONFDIR=${SYSCONFDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmii-3
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/wmii-3/* \
		${PREFIX}/share/examples/wmii-3

.include <bsd.port.mk>
