# $OpenBSD: Makefile,v 1.12 2001/05/05 22:39:51 jakob Exp $

COMMENT=	"desktop organizer software for the Palm Pilot"

DISTNAME=	jpilot-0.99
CATEGORIES=	comms
NEED_VERSION=	1.406

MASTER_SITES=	http://www.jpilot.org/

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Hakan Olsson <ho@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pisock.3::comms/pilot-link \
		gtk.1.2::x11/gtk+

USE_X11=		yes
CONFIGURE_STYLE=	autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpilot
	${INSTALL_DATA} ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
