# $OpenBSD: Makefile,v 1.7 2004/11/21 22:29:51 espie Exp $

COMMENT=	"curses-based emulator for the Wyse 60 terminal"

DISTNAME=	wy60-2.0.8
CATEGORIES=	comms
HOMEPAGE=	http://gutschke.com/wy60/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=	${HOMEPAGE}html/archive/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wy60
	${INSTALL_DATA} ${WRKSRC}/wy60.rc ${PREFIX}/share/examples/wy60/

.include <bsd.port.mk>
