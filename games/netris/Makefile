# $OpenBSD: Makefile,v 1.16 2003/08/14 16:07:31 brad Exp $

COMMENT=	"network head-to-head version of T*tris"

DISTNAME=	netris-0.52
CATEGORIES=	games

HOMEPAGE=	http://www.netris.org/
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure

NO_REGRESS=	Yes
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
