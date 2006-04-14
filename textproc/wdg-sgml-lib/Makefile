# $OpenBSD: Makefile,v 1.7 2006/04/14 22:20:08 naddy Exp $

COMMENT=	"collection of HTML, XHTML, ISO-HTML, WML and MathML DTDs"

DISTNAME=	wdg-sgml-lib-1.1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc

HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.htmlhelp.com/tools/validator/src/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/wdg

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/wdg
	@cp -R ${WRKDIST}/* ${PREFIX}/share/wdg/

.include <bsd.port.mk>
