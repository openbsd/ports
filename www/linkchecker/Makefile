# $OpenBSD: Makefile,v 1.50 2019/07/12 20:50:47 sthen Exp $

COMMENT-main=	checks HTML documents for broken links, CLI
COMMENT-x11=	checks HTML documents for broken links, GUI

V=		9.3
REVISION-main=	3
REVISION-x11=	3
MODPY_EGG_VERSION=${V}
GH_ACCOUNT=	wummel
GH_PROJECT=	linkchecker
GH_TAGNAME=	upstream/$V

DISTNAME=	${GH_PROJECT}-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-x11=	${GH_PROJECT}-gui-${V}
CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.io/linkchecker/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

MODULES=	lang/python

RUN_DEPENDS-main=	net/py-dnspython \
			www/py-requests

RUN_DEPENDS-x11=	devel/desktop-file-utils \
			www/linkchecker,-main \
			x11/gtk+3,-guic \
			x11/py-qt4

SEPARATE_BUILD=		Yes
MULTI_PACKAGES=		-main -x11

WRKDIST=	${WRKDIR}/${GH_PROJECT}-upstream-${V}
NO_TEST=	Yes

post-extract:
	@perl -pi -e 's,logo48x48,linkchecker,' ${WRKSRC}/doc/*.desktop

post-install:
.for s in 16 32 48 64 128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/doc/html/logo${s}x${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/linkchecker.png
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/html/lccollection.qhcp \
		${PREFIX}/share/linkchecker/lccollection.qhc

.include <bsd.port.mk>
