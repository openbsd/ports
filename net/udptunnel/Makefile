COMMENT=	UDP tunnel utility

DISTNAME=	udptunnel-1.1
REVISION=	1
CATEGORIES=	net

SITES=		${HOMEPAGE}

HOMEPAGE=	http://www.cs.columbia.edu/~lennox/udptunnel/

# 3-clause BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/udptunnel
	${INSTALL_DATA} ${WRKSRC}/udptunnel.html ${PREFIX}/share/doc/udptunnel

.include <bsd.port.mk>
