# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:16 sthen Exp $

COMMENT=	collection of HTML, XHTML, ISO-HTML, WML and MathML DTDs

DISTNAME=	wdg-sgml-lib-1.1.4
REVISION=	1
CATEGORIES=	textproc

HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

# custom
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.htmlhelp.com/tools/validator/src/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/wdg

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/wdg
	@cp -R ${WRKDIST}/* ${PREFIX}/share/wdg/

.include <bsd.port.mk>
