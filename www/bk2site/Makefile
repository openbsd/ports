# $OpenBSD: Makefile,v 1.3 2000/10/22 15:43:39 espie Exp $

DISTNAME=	bk2site-1.1.5
CATEGORIES=	www
NEED_VERSION=	1.305
MASTER_SITES=	http://download.sourceforge.net/bk2site/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu destdir

post-install:
	${INSTALL_MAN} ${WRKBUILD}/bk2site.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKBUILD}/indexbase.html ${WRKBUILD}/otherbase.html \
			${PREFIX}/share/bk2site/

.include <bsd.port.mk>
