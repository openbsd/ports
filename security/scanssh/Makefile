# $OpenBSD: Makefile,v 1.8 2002/09/06 04:27:43 jsyn Exp $

COMMENT=	"SSH remote version scanner"

DISTNAME=	scanssh-1.6b
CATEGORIES=	security
NEED_VERSION=	1.500
MASTER_SITES=	http://monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/scanssh

.include <bsd.port.mk>
