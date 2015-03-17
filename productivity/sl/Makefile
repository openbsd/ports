# $OpenBSD: Makefile,v 1.4 2015/03/17 23:43:25 bcallah Exp $

COMMENT =	substantially more useful ls
DISTNAME =	sl-ls-1.1.2
REVISION =	0
CATEGORIES =	productivity sysutils

HOMEPAGE =	http://practicalthought.com/sl/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES +=	lang/tcl

RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

NO_BUILD =	Yes
NO_TEST =	Yes

pre-configure:
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/sl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sl
	${INSTALL_DATA} ${WRKSRC}/sl.tcl ${PREFIX}/share/examples/sl

.include <bsd.port.mk>
