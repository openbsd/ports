# $OpenBSD: Makefile,v 1.3 2007/10/08 08:22:43 steven Exp $

COMMENT=		web admin plugin for trac

V=			0.1.2
DISTNAME=		trac-adminplugin-${V}-svn6011
PKGNAME=		trac-adminplugin-${V}p0
CATEGORIES=		www devel

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

HOMEPAGE=		http://trac.edgewall.org/wiki/WebAdmin

MASTER_SITES=		http://meta-planets.net/~openbsd/ \
			http://www.phxbsd.com/OpenBSD/ \
			http://spacehopper.org/m/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/trac

BUILD_DEPENDS=		::devel/py-setuptools \
			::lang/python/2.4

NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/webadmin

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
