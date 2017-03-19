# $OpenBSD: Makefile,v 1.1.1.1 2017/03/19 21:49:31 fcambus Exp $

COMMENT =	interpreter for BBC Basic (Basic V)

DISTNAME =	brandy-1.20.1

CATEGORIES =	lang

HOMEPAGE =	http://jaguar.orpheusweb.co.uk/branpage.html

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=brandy/}

MAKE_FLAGS =	CC="${CC}" LD="${CC}"

MAKE_FILE =	makefile.text tbrandy

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tbrandy ${PREFIX}/bin/brandy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/basic ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/messages ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/use ${PREFIX}/share/doc/brandy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brandy
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/brandy

.include <bsd.port.mk>
