# $OpenBSD: Makefile,v 1.9 2013/01/02 20:40:21 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	Qt-based LDAP browser and utility

MODPY_EGG_VERSION=3.0.7
DISTNAME=	luma-${MODPY_EGG_VERSION}

CATEGORIES=	databases x11

HOMEPAGE=	http://luma.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=luma/}

MODULES=	lang/python
RUN_DEPENDS=	x11/py-qt4 \
		devel/desktop-file-utils \
		x11/gtk+2,-guic \
		databases/py-ldap

NO_REGRESS=	Yes

# install the damn templates
post-install:
	cp -r ${WRKSRC}/luma/plugins/browser/templates \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/luma/plugins/browser/templates/

.include <bsd.port.mk>
