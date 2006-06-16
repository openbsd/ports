# $OpenBSD: Makefile,v 1.1.1.1 2006/06/16 21:36:03 steven Exp $

COMMENT=	"dynamic window manager"

DISTNAME=	wmii-3
CATEGORIES=	x11

HOMEPAGE=	http://wmii.de

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}${SYSCONFDIR}/${DISTNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
