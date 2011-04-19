# $OpenBSD: Makefile,v 1.13 2011/04/19 15:09:12 giovanni Exp $

COMMENT=	class that provides multiple interfaces for sending email

DISTNAME=	Mail-1.2.0
PKGNAME=	pear-${DISTNAME}
CATEGORIES=	mail
EPOCH=		0

MODULES=	www/pear

HOMEPAGE=	http://pear.php.net/package/Mail

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/pear-Net-SMTP>=1.4.1

.include <bsd.port.mk>
