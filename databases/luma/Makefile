# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:53 sthen Exp $

COMMENT=	Qt-based LDAP browser and utility

MODPY_EGG_VERSION=3.0.7
DISTNAME=	luma-${MODPY_EGG_VERSION}
REVISION=	3

CATEGORIES=	databases x11

HOMEPAGE=	http://luma.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=luma/}

MODULES=	lang/python
RUN_DEPENDS=	x11/py-qt4 \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		databases/py-ldap

NO_TEST=	Yes

# install the damn templates
post-install:
	cp -r ${WRKSRC}/luma/plugins/browser/templates \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/luma/plugins/browser/templates/

.include <bsd.port.mk>
