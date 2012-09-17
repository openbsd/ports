# $OpenBSD: Makefile,v 1.24 2012/09/17 12:50:09 gonzalo Exp $

COMMENT=	view and edit files in hexadecimal or ASCII

DISTNAME=	hexedit-1.2.12
CATEGORIES=	editors

MASTER_SITES=	http://www.chez.com/prigaux/	\
		http://merd.net/pixel/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.chez.com/prigaux/hexedit.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c curses

CONFIGURE_STYLE= gnu dest
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/hexedit

.include <bsd.port.mk>
