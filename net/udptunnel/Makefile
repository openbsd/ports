# $OpenBSD: Makefile,v 1.2 2002/12/29 21:14:12 fgsch Exp $

COMMENT=	"UDP tunnel utility"

VERSION=	1.1
DISTNAME=	udptunnel-${VERSION}
CATEGORIES=	net

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
