# $OpenBSD: Makefile,v 1.5 2011/09/16 10:31:22 espie Exp $

COMMENT=	class to decode mime messages

DISTNAME=	Mail_mimeDecode-1.5.1
REVISION=		0
CATEGORIES=	mail

MODULES=	www/pear
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		mail/pear-Mail-Mime>=1.5.2

.include <bsd.port.mk>
