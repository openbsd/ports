# $OpenBSD: Makefile,v 1.14 2001/05/29 01:14:21 pvalchev Exp $

COMMENT=	"desktop organizer software for the palm pilot"

DISTNAME=	jpilot-0.99
PKGNAME=	${DISTNAME}p1
CATEGORIES=	comms
NEED_VERSION=	1.406

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pisock.3::comms/pilot-link \
		gtk.1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpilot
	${INSTALL_DATA} ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot
	${INSTALL_DATA} ${WRKSRC}/docs/manual.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
