# $OpenBSD: Makefile,v 1.16 2010/04/15 14:11:01 ajacoutot Exp $

COMMENT=	app-level proxy for mail retrieval behind firewalls

DISTNAME=	pop3gwd-1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	net mail

MAINTAINER=	Ian McWilliam <ian@dodo.com.au>

MASTER_SITES=   http://www.go.dlr.de/linux/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/pop3gwd

NO_REGRESS=	Yes

.include <bsd.port.mk>
