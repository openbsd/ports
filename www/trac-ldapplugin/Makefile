# $OpenBSD: Makefile,v 1.15 2015/10/29 18:25:32 ajacoutot Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION =	0.6.0dev_r0
DISTNAME=		trac-ldapplugin-0.6.0
REVISION=		6
CATEGORIES=		www devel

HOMEPAGE=		http://trac-hacks.org/wiki/LdapPlugin

MASTER_SITES=		http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		www/trac \
			databases/py-ldap

NO_TEST=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
