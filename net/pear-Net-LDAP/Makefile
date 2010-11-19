# $OpenBSD: Makefile,v 1.9 2010/11/19 22:31:37 espie Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-0.6.6
PKGNAME=	pear-${DISTNAME:S/_/-/}
REVISION=	2
CATEGORIES=	net

MODULES=	www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/php5/extensions,-ldap

.include <bsd.port.mk>
