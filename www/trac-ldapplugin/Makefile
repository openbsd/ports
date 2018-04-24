# $OpenBSD: Makefile,v 1.17 2018/04/24 09:42:42 danj Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION =	0.6.0.dev0
DISTNAME=		trac-ldapplugin-0.6.0
REVISION=		7
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
