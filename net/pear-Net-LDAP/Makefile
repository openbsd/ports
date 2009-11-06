# $OpenBSD: Makefile,v 1.6 2009/11/06 08:32:37 jasper Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-0.6.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net pear

MODULES=	www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/php5/extensions,-ldap

.include <bsd.port.mk>
