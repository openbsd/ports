# $OpenBSD: Makefile,v 1.1.1.1 2016/12/07 10:47:46 ajacoutot Exp $

COMMENT=		modern desktop flat theme suite

GH_ACCOUNT=		snwh
GH_PROJECT=		paper-gtk-theme
GH_TAGNAME=		v2.1.0

CATEGORIES=		x11

HOMEPAGE=		https://snwh.org/paper

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		x11/gtk-engines2

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -Rp ${WRKSRC}/Paper ${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/

.include <bsd.port.mk>
