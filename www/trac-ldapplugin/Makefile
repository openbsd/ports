# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:50 espie Exp $

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
MODPY_BADEGGS=	LdapPlugin

.include <bsd.port.mk>
