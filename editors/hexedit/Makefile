# $OpenBSD: Makefile,v 1.19 2004/11/24 11:08:03 espie Exp $

COMMENT=	"view and edit files in hexadecimal or ASCII"

DISTNAME=	hexedit-1.2.2
CATEGORIES=	editors
MASTER_SITES=	http://www.chez.com/prigaux/	\
		http://merd.net/pixel/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.chez.com/prigaux/hexedit.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

CONFIGURE_STYLE= gnu dest
NO_REGRESS=	Yes

DOCS=	COPYING TODO Changes

WRKDIST=	${WRKDIR}/hexedit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hexedit
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/hexedit

.include <bsd.port.mk>
