# $OpenBSD: Makefile,v 1.18 2005/10/21 20:07:05 naddy Exp $

COMMENT=	"space-based shoot'em up game for X11"

DISTNAME=	xsoldier-1.3
CATEGORIES=	games x11

HOMEPAGE=	http://www.interq.or.jp/libra/oohara/xsoldier/

MAINTAINER=	Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xpm c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--localstatedir=/var

USE_X11=	Yes
NO_REGRESS=	Yes

# template for pkg install
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xsoldier
	${INSTALL_DATA} ${WRKSRC}/scorefile.txt \
		 ${PREFIX}/share/examples/xsoldier/xsoldier.scores

.include <bsd.port.mk>
