# $OpenBSD: Makefile,v 1.12 2013/10/03 16:37:18 dcoppa Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		trac-ldapplugin-${MODPY_EGG_VERSION}
REVISION=		3
CATEGORIES=		www devel

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

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
