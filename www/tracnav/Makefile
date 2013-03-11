# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:50 espie Exp $

COMMENT=	customizable navigation bar for trac's wiki

MODPY_EGG_VERSION= 4.1
DISTNAME=	TracNav-${MODPY_EGG_VERSION}
REVISION=	2
EXTRACT_SUFX=	.zip
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://svn.ipd.uka.de/trac/javaparty/wiki/TracNav

# from http://svn.ipd.uka.de/trac/javaparty/attachment/wiki/TracNav/Files/TracNav-4.1.zip?format=raw
MASTER_SITES=		http://spacehopper.org/mirrors/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		www/trac

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
