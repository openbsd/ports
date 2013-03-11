# $OpenBSD: Makefile,v 1.25 2013/03/11 11:02:49 espie Exp $

COMMENT=	view and edit files in hexadecimal or ASCII

DISTNAME=	hexedit-1.2.12
CATEGORIES=	editors

MASTER_SITES=	http://www.chez.com/prigaux/	\
		http://merd.net/pixel/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.chez.com/prigaux/hexedit.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

CONFIGURE_STYLE= gnu dest
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/hexedit

.include <bsd.port.mk>
