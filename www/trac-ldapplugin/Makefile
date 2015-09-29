# $OpenBSD: Makefile,v 1.13 2015/09/29 09:02:55 edd Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION =	0.6.0dev_r0
DISTNAME=		trac-ldapplugin-0.6.0
REVISION=		4
CATEGORIES=		www devel

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

HOMEPAGE=		http://trac-hacks.org/wiki/LdapPlugin

MASTER_SITES=		http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		www/trac \
			databases/py-ldap \
			devel/py-setuptools>=18.2v0

NO_TEST=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
BUILD_DEPENDS +=	devel/py-setuptools>=18.2v0

.include <bsd.port.mk>
