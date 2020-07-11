# $OpenBSD: Makefile,v 1.10 2020/07/11 22:54:40 sthen Exp $

COMMENT=	customizable navigation bar for trac's wiki#'

MODPY_EGG_VERSION= 4.1
DISTNAME=	TracNav-${MODPY_EGG_VERSION}
REVISION=	4
EXTRACT_SUFX=	.zip
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://svn.ipd.uka.de/trac/javaparty/wiki/TracNav

# from http://svn.ipd.uka.de/trac/javaparty/attachment/wiki/TracNav/Files/TracNav-4.1.zip?format=raw
MASTER_SITES=		https://spacehopper.org/mirrors/

# GPLv2+
PERMIT_PACKAGE=   Yes

RUN_DEPENDS=		www/trac

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
