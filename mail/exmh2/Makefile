# $OpenBSD: Makefile,v 1.37 2020/03/20 16:44:25 naddy Exp $

COMMENT=		Tcl/Tk interface to the MH mail system

DISTNAME=		exmh-2.7.2
REVISION =		2
CATEGORIES=     	mail

HOMEPAGE=		http://www.beedub.com/exmh/

# custom BSD-like
PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://ftp.funet.fi/pub/languages/tcl/tcl/exmh/ \
			ftp://ftp.tcl.tk/pub/tcl/exmh/

MODULES=		x11/tk
BUILD_DEPENDS=		${MODTCL_RUN_DEPENDS}
RUN_DEPENDS=		lang/expect\
			mail/nmh\
			mail/metamail\
			${MODTK_RUN_DEPENDS}
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-configure:
	@cd ${WRKDIST} && LOCALBASE=${LOCALBASE} PREFIX=${PREFIX} \
		WRKSRC=${WRKSRC} WRKBUILD=${WRKBUILD} \
		MODTCL_BIN=${MODTCL_BIN} MODTK_BIN=${MODTK_BIN} \
		perl ${FILESDIR}/configure

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh ${PREFIX}/bin/exmh
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-bg ${PREFIX}/bin/exmh-bg
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-async ${PREFIX}/bin/exmh-async
	${INSTALL_SCRIPT} ${WRKBUILD}/ftp.expect ${PREFIX}/bin/ftp.expect
	${INSTALL_SCRIPT} ${WRKBUILD}/inc.expect ${PREFIX}/bin/inc.expect
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-strip ${PREFIX}/bin/exmh-strip
	${INSTALL_MAN} ${WRKSRC}/exmh.l ${PREFIX}/man/man1/exmh.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/exmh
	cp -r ${WRKSRC}/lib/. ${PREFIX}/share/exmh
	cd ${PREFIX}/share && echo 'auto_mkindex exmh'\
		| ${MODTCL_BIN}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/exmh
	find ${PREFIX}/share/exmh -type d -exec chmod ${DIRMODE} {} + \
		-o -type f -exec chmod ${SHAREMODE} {} +

.include <bsd.port.mk>
