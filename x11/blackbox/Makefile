# $OpenBSD: Makefile,v 1.30 2002/05/15 17:58:51 espie Exp $

COMMENT=	"small & pretty window manager for 8 and more bits displays"

DISTNAME=	blackbox-0.62.1
CATEGORIES=	x11
NEED_VERSION=	1.522
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

HOMEPAGE=	http://blackboxwm.sourceforge.net/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu

DOCS=	AUTHORS ChangeLog ChangeLog-0.40.x ChangeLog-0.50.x \
	ChangeLog-0.51.x ChangeLog-0.60.x README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
