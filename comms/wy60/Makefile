# $OpenBSD: Makefile,v 1.3 2003/02/22 16:34:07 naddy Exp $

COMMENT=	"curses-based emulator for the Wyse 60 terminal"

DISTNAME=	wy60-2.0.6
CATEGORIES=	comms
HOMEPAGE=	http://gutschke.com/wy60/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}html/archive/

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wy60
	${INSTALL_DATA} ${WRKSRC}/wy60.rc ${PREFIX}/share/examples/wy60/

.include <bsd.port.mk>
