# $OpenBSD: Makefile,v 1.1.1.1 2009/09/22 15:09:39 jasper Exp $

COMMENT=		framework and a set of enhanced PyGTK widgets

V=			1.9.26
DISTNAME=		kiwi-$V
PKGNAME=		py-kiwi-$V
CATEGORIES=		x11 devel

HOMEPAGE=		http://www.async.com.br/projects/kiwi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=          ${MASTER_SITE_GNOME:=sources/kiwi/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::databases/py-sqlobject \
			::x11/py-gtk2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-kiwi
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-kiwi

.include <bsd.port.mk>
