# $OpenBSD: Makefile,v 1.6 2019/07/12 20:51:19 sthen Exp $

COMMENT=		modern freedesktop flat icon theme

V=			1.5.0
WRKDIST=		${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=		${GH_PROJECT}-${V}
REVISION=		1

GH_ACCOUNT=		snwh
GH_PROJECT=		paper-icon-theme
GH_TAGNAME=		v.${V}
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
