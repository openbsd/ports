# $OpenBSD: Makefile,v 1.3 2007/03/22 22:48:04 robert Exp $

COMMENT=	"pear ldap"

DISTNAME=	Net_LDAP-0.6.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/php5/extensions,-ldap

.include <bsd.port.mk>
