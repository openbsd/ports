# $OpenBSD: Makefile,v 1.3 2006/10/22 12:28:49 mbalmer Exp $

COMMENT=	"an implementation of the IMAP protocol for PHP"

DISTNAME=	Net_IMAP-1.0.3
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
