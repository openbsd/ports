# $OpenBSD: Makefile,v 1.16 2001/10/02 15:45:52 brad Exp $

COMMENT=	"view and edit files in hexadecimal or ASCII"

DISTNAME=	hexedit-1.2.1
CATEGORIES=	editors
NEED_VERSION=	1.460
MASTER_SITES=	http://www.chez.com/prigaux/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.chez.com/prigaux/hexedit.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

WRKDIST=	${WRKDIR}/hexedit

DOCS=	COPYING TODO Changes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hexedit
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/hexedit

.include <bsd.port.mk>
