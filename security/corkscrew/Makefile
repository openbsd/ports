COMMENT=		HTTP tunneling utility for SSH

DISTNAME=		corkscrew-2.0
REVISION=		0
CATEGORIES=    		security net

HOMEPAGE=		http://www.agroman.net/corkscrew/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.agroman.net/corkscrew/

CONFIGURE_STYLE=	gnu

DOCS=	README ChangeLog

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corkscrew
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/corkscrew

.include <bsd.port.mk>
