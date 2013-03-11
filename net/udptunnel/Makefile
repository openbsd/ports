# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:57 espie Exp $

COMMENT=	UDP tunnel utility

DISTNAME=	udptunnel-1.1
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.cs.columbia.edu/~lennox/udptunnel/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/udptunnel
	${INSTALL_DATA} ${WRKSRC}/udptunnel.html ${PREFIX}/share/doc/udptunnel

.include <bsd.port.mk>
