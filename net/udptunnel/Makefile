# $OpenBSD: Makefile,v 1.6 2010/07/12 22:07:42 sthen Exp $

COMMENT=	UDP tunnel utility

DISTNAME=	udptunnel-1.1
REVISION=	0
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
