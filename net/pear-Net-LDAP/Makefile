# $OpenBSD: Makefile,v 1.1.1.1 2006/10/28 17:21:03 mbalmer Exp $

COMMENT=	"pear ldap"

DISTNAME=	Net_LDAP-0.6.6
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	php5-ldap::www/php5/extensions,-ldap

.include <bsd.port.mk>
