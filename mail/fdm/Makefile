# $OpenBSD: Makefile,v 1.4 2007/08/02 06:18:37 steven Exp $

COMMENT=	fetch, filter and deliver mail

DISTNAME=	fdm-1.3c
CATEGORIES=	mail

HOMEPAGE=       http://fdm.sourceforge.net/
MAINTAINER=     Nicholas Marriott <nicm@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= c crypto ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fdm/}

LIB_DEPENDS+=	tdb::databases/tdb
MAKE_FLAGS+=	-DDB

FAKE_FLAGS=	DESTDIR=${WRKINST} PREFIX=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
