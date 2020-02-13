# $OpenBSD: Makefile,v 1.7 2020/02/13 22:19:35 sthen Exp $

COMMENT=		modern freedesktop flat icon theme

GH_ACCOUNT=		snwh
GH_PROJECT=		paper-icon-theme
GH_TAGNAME=		v.1.5.0
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		https://snwh.org/paper

# CC-SA-4.0
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		x11/gtk+3,-guic

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/
	cp -Rp ${WRKSRC}/Paper ${PREFIX}/share/icons/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/icons/

.include <bsd.port.mk>
