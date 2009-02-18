# $OpenBSD: Makefile,v 1.2 2009/02/18 14:06:45 sthen Exp $

COMMENT=		ldap authentication plugin for trac

V=			0.5.1
DISTNAME=		trac-ldapplugin-$V-svn2637
PKGNAME=		trac-ldapplugin-$V
CATEGORIES=		www devel

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

HOMEPAGE=		http://trac-hacks.org/wiki/LdapPlugin

MASTER_SITES=		http://meta-planets.net/~openbsd/ \
			http://www.phxbsd.com/OpenBSD/ \
			http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/trac \
			::databases/py-ldap

BUILD_DEPENDS=		::devel/py-setuptools \
			::lang/python/2.4

NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/ldapplugin/0.10

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
