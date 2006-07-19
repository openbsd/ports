# $OpenBSD: Makefile,v 1.6 2006/07/19 15:11:53 steven Exp $

COMMENT=		"simple SMTP client"

DISTNAME=		smtpclient-1.0.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		mail

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		ftp://www.ossp.org/pkg/tool/smtpclient/

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

.include <bsd.port.mk>
