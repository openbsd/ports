# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:47 espie Exp $

COMMENT=	collection of HTML, XHTML, ISO-HTML, WML and MathML DTDs

DISTNAME=	wdg-sgml-lib-1.1.4
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# custom
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.htmlhelp.com/tools/validator/src/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/wdg

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/wdg
	@cp -R ${WRKDIST}/* ${PREFIX}/share/wdg/

.include <bsd.port.mk>
