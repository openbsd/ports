# $OpenBSD: Makefile,v 1.12 2016/08/28 10:37:48 jca Exp $

COMMENT=		framework and a set of enhanced PyGTK widgets

V=			1.9.29
DISTNAME=		kiwi-$V
PKGNAME=		py-kiwi-$V
CATEGORIES=		x11 devel
REVISION=		1

HOMEPAGE=		http://www.async.com.br/projects/kiwi/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=          ${MASTER_SITE_GNOME:=sources/kiwi/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/gettext-tools \
			x11/py-gtk2
RUN_DEPENDS=		databases/py-sqlobject \
			x11/py-gtk2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-kiwi
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-kiwi

.include <bsd.port.mk>
