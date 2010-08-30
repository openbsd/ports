# $OpenBSD: Makefile,v 1.6 2010/08/30 22:15:24 sthen Exp $

COMMENT=		ldap authentication plugin for trac

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		trac-ldapplugin-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES=		www devel

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

HOMEPAGE=		http://trac-hacks.org/wiki/LdapPlugin

MASTER_SITES=		http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/trac \
			::databases/py-ldap

NO_REGRESS=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_BADEGGS=	LdapPlugin

.include <bsd.port.mk>
