# $OpenBSD: Makefile,v 1.2 2010/03/21 00:03:06 sthen Exp $

COMMENT=	class to decode mime messages

DISTNAME=	Mail_mimeDecode-1.5.1
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	mail

MODULES=	www/pear
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:pear-Mail-Mime->=1.5.2:mail/pear-Mail-Mime

.include <bsd.port.mk>
