# $OpenBSD: Makefile,v 1.1.1.1 2001/09/06 20:55:19 jakob Exp $

COMMENT=	"UDP tunnel utility"

VERSION=	1.1
DISTNAME=	udptunnel-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.448

MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/lennox/udptunnel/ 

HOMEPAGE=	http://www.cs.columbia.edu/~lennox/udptunnel/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/udptunnel
	${INSTALL_DATA} ${WRKSRC}/udptunnel.html ${PREFIX}/share/doc/udptunnel

.include <bsd.port.mk>
