# $OpenBSD: Makefile,v 1.20 2005/07/03 01:22:22 brad Exp $

COMMENT=	"view and edit files in hexadecimal or ASCII"

DISTNAME=	hexedit-1.2.10
CATEGORIES=	editors
MASTER_SITES=	http://www.chez.com/prigaux/	\
		http://merd.net/pixel/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.chez.com/prigaux/hexedit.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
