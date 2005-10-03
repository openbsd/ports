# $OpenBSD: Makefile,v 1.5 2005/10/03 08:02:13 alek Exp $

COMMENT=	"postfix greylist daemon"

VERSION=	1.18
DISTNAME=	postgrey-${VERSION}
CATEGORIES=	mail

MASTER_SITES=	http://isg.ee.ethz.ch/tools/postgrey/pub/ \
		http://isg.ee.ethz.ch/tools/postgrey/pub/old/

HOMEPAGE=	http://isg.ee.ethz.ch/tools/postgrey/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Net-Server \
			::devel/p5-IO-Multiplex \
			::databases/p5-BerkeleyDB

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/postgrey ${PREFIX}/libexec

.include <bsd.port.mk>
