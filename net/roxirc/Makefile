# $OpenBSD: Makefile,v 1.2 2001/11/13 22:13:24 espie Exp $

COMMENT=	"tcl/tk irc client"

DISTNAME=	roxirc-1.72
CATEGORIES=	net
NEED_VERSION=	1.496

HOMEPAGE=	http://roxirc.lighter.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/download/

RUN_DEPENDS=	::x11/tk/8.3

NO_BUILD=	Yes

DOCS=	bindings config help menus prefs startup

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/roxirc
	${INSTALL_SCRIPT} ${WRKSRC}/roxirc ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/roxirc

.include <bsd.port.mk> 
