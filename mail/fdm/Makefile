# $OpenBSD: Makefile,v 1.13 2010/11/19 07:23:06 espie Exp $

COMMENT=	fetch, filter and deliver mail

DISTNAME=	fdm-1.6
REVISION =	1
CATEGORIES=	mail

HOMEPAGE=       http://fdm.sourceforge.net/
MAINTAINER=     Nicholas Marriott <nicm@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= c crypto ssl z tdb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fdm/}

LIB_DEPENDS +=	databases/tdb>=1.2.1

FAKE_FLAGS=	PREFIX=${PREFIX}
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
