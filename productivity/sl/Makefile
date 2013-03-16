# $OpenBSD: Makefile,v 1.2 2013/03/16 13:25:21 bcallah Exp $

COMMENT =	substantially more useful ls
DISTNAME =	sl-ls-1.1.2
CATEGORIES =	productivity sysutils

HOMEPAGE =	http://practicalthought.com/sl/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

MODULES +=	lang/tcl

RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

NO_BUILD =	Yes
NO_TEST =	Yes

pre-configure:
# XXX: Use ${MODTCL_TCLSH_ADJ} someday
	perl -pi -e s,/usr/bin/tclsh,${PREFIX}/bin/tclsh${MODTCL_VERSION},g ${WRKSRC}/sl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sl
	${INSTALL_DATA} ${WRKSRC}/sl.tcl ${PREFIX}/share/examples/sl

.include <bsd.port.mk>
