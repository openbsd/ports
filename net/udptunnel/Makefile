# $OpenBSD: Makefile,v 1.5 2008/12/10 22:33:37 jasper Exp $

COMMENT=	UDP tunnel utility

DISTNAME=	udptunnel-1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/lennox/udptunnel/ 

HOMEPAGE=	http://www.cs.columbia.edu/~lennox/udptunnel/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/udptunnel
	${INSTALL_DATA} ${WRKSRC}/udptunnel.html ${PREFIX}/share/doc/udptunnel

.include <bsd.port.mk>
