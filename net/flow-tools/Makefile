# $OpenBSD: Makefile,v 1.9 2004/06/19 21:34:58 jakob Exp $

COMMENT=	"cisco NetFlow utilities"

DISTNAME=	flow-tools-0.66
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOME_PAGE=	http://www.splintered.net/sw/flow-tools/

MASTER_SITES=	ftp://ftp.eng.oar.net/pub/flow-tools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

do-install:
	(cd ${WRKSRC}/src; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
	${INSTALL_MAN} ${WRKSRC}/docs/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/cfg
	${INSTALL_DATA} ${WRKSRC}/configs/*.cfg \
		${PREFIX}/share/examples/flow-tools/cfg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/sym
	${INSTALL_DATA} ${WRKSRC}/configs/*.sym \
		${PREFIX}/share/examples/flow-tools/sym

.include <bsd.port.mk>
