# $OpenBSD: Makefile,v 1.33 2003/01/05 03:53:59 lebel Exp $

COMMENT=	"small & pretty window manager for 8 and more bits displays"

VERSION=		0.65.0
DISTNAME=		blackbox-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://blackboxwm.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
