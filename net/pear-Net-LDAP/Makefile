# $OpenBSD: Makefile,v 1.7 2009/11/06 09:01:07 jasper Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-0.6.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net

MODULES=	www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/php5/extensions,-ldap

.include <bsd.port.mk>
