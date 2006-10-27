# $OpenBSD: Makefile,v 1.4 2006/10/27 17:52:33 steven Exp $

COMMENT=	"dynamic window manager"

DISTNAME=	wmii-3.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org

MAINTAINER=	Tobias Ulmer <tobiasu@tmux.org>

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
