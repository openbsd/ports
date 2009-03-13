# $OpenBSD: Makefile,v 1.28 2009/03/13 15:17:02 sthen Exp $

COMMENT=		Tcl/Tk interface to the MH mail system

DISTNAME=		exmh-2.7.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	mail

HOMEPAGE=		http://www.beedub.com/exmh/

MAINTAINER=		Michael Paddon <michael@paddon.org>

# custom BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.funet.fi/pub/languages/tcl/tcl/exmh/ \
			ftp://ftp.tcl.tk/pub/tcl/exmh/

MODULES=		x11/tk
# XXX broken fonts with 8.5
MODTCL_VERSION=		8.4
MODTK_VERSION=		8.4
BUILD_DEPENDS=		${MODTCL_RUN_DEPENDS}
RUN_DEPENDS=		:expect-*:lang/expect\
			:nmh-*:mail/nmh\
			:metamail-*:mail/metamail\
			${MODTK_RUN_DEPENDS}
USE_X11=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes
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
	find ${PREFIX}/share/exmh -type d -print0 | xargs -0 chmod ${DIRMODE}
	find ${PREFIX}/share/exmh -type f -print0 | xargs -0 chmod ${SHAREMODE}

.include <bsd.port.mk>
