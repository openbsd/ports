# $OpenBSD: Makefile,v 1.3 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=		framework and a set of enhanced PyGTK widgets

V=			1.9.26
DISTNAME=		kiwi-$V
PKGNAME=		py-kiwi-$V
REVISION=		0
CATEGORIES=		x11 devel

HOMEPAGE=		http://www.async.com.br/projects/kiwi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=          ${MASTER_SITE_GNOME:=sources/kiwi/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=		devel/gettext \
			lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::databases/py-sqlobject \
			::x11/py-gtk2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-kiwi
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-kiwi

.include <bsd.port.mk>
