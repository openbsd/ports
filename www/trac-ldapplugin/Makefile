# $OpenBSD: Makefile,v 1.16 2015/12/03 21:24:32 sthen Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION =	0.6.0dev_r0
DISTNAME=		trac-ldapplugin-0.6.0
REVISION=		6
CATEGORIES=		www devel

HOMEPAGE=		http://trac-hacks.org/wiki/LdapPlugin

MASTER_SITES=		https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		www/trac \
			databases/py-ldap

NO_TEST=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
