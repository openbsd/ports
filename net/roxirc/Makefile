# $OpenBSD: Makefile,v 1.6 2003/06/20 03:31:25 kevlo Exp $

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

RUN_DEPENDS=	:tk-8.3.*:x11/tk/8.3

NO_BUILD=	Yes
NO_REGRESS=	Yes

DOCS=	bindings config extras help hilight lagmeter menus mirccolors \
	oper prefs single startup xresources

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/roxirc
	${INSTALL_SCRIPT} ${WRKSRC}/roxirc ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/roxirc

.include <bsd.port.mk> 
