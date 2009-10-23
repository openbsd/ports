# $OpenBSD: Makefile,v 1.1.1.1 2009/10/23 17:24:19 sthen Exp $

COMMENT=	customizable navigation bar for trac's wiki

MODPY_EGG_VERSION= 4.1
DISTNAME=	TracNav-${MODPY_EGG_VERSION}
EXTRACT_SUFX=	.zip
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://svn.ipd.uka.de/trac/javaparty/wiki/TracNav

# from http://svn.ipd.uka.de/trac/javaparty/attachment/wiki/TracNav/Files/TracNav-4.1.zip?format=raw
MASTER_SITES=		http://spacehopper.org/mirrors/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/trac

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
