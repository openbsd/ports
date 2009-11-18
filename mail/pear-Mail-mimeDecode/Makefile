# $OpenBSD: Makefile,v 1.1.1.1 2009/11/18 19:07:09 jasper Exp $

COMMENT=	class to decode mime messages

DISTNAME=	Mail_mimeDecode-1.5.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	mail

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:pear-Mail-Mime->=1.5.2:mail/pear-Mail-Mime

.include <bsd.port.mk>
