# $OpenBSD: Makefile,v 1.9 2004/08/14 20:24:46 pvalchev Exp $

BROKEN=		"distfile continually changing, cannot keep correct checksum"

COMMENT=	"Tcl/Tk irc client"

DISTNAME=	roxirc-2.0
CATEGORIES=	net

HOMEPAGE=	http://roxirc.lighter.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/download/betas/

RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DOCS=	bindings config extras help hilight lagmeter menus mirccolors \
	oper prefs single startup

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/roxirc
	${INSTALL_SCRIPT} ${WRKSRC}/roxirc ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/roxirc

.include <bsd.port.mk> 
