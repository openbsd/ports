# $OpenBSD: Makefile,v 1.6 2001/04/06 16:58:32 brad Exp $

COMMENT=	"SSH remote version scanner"

DISTNAME=	scanssh-1.55
CATEGORIES=	security
NEED_VERSION=	1.384
MASTER_SITES=	http://www.monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/scanssh

.include <bsd.port.mk>
