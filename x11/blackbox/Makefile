# $OpenBSD: Makefile,v 1.31 2002/11/13 02:15:59 brad Exp $

COMMENT=	"small & pretty window manager for 8 and more bits displays"

VERSION=	0.65.0
DISTNAME=	blackbox-${VERSION}
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

HOMEPAGE=	http://blackboxwm.sourceforge.net/

MAINTAINER=	Margarida Sequeira <niness@devilness.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
