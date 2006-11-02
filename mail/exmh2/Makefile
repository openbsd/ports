# $OpenBSD: Makefile,v 1.25 2006/11/02 12:39:12 espie Exp $

COMMENT=		"Tcl/Tk interface to the MH mail system"

DISTNAME=		exmh-2.7.2
CATEGORIES=     	mail

HOMEPAGE=		http://www.beedub.com/exmh/

MAINTAINER=		Michael Paddon <michael@paddon.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://sunsite.utk.edu/pub/tcl/exmh/ \
			ftp://ftp.funet.fi/pub/languages/tcl/tcl/exmh/ \
			ftp://ftp.tcl.tk/pub/tcl/exmh/

BUILD_DEPENDS=		:tcl-8.4.*:lang/tcl/8.4
RUN_DEPENDS=		:expect-*:lang/expect\
			:nmh-*:mail/nmh\
			:metamail-*:mail/metamail\
			:tk-8.4.*:x11/tk/8.4
USE_X11=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-configure:
	@cd ${WRKDIST} && LOCALBASE=${LOCALBASE} PREFIX=${PREFIX} \
		WRKSRC=${WRKSRC} WRKBUILD=${WRKBUILD} \
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
		| ${LOCALBASE}/bin/tclsh8.4
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/exmh
	find ${PREFIX}/share/exmh -type d -print0 | xargs -0 chmod ${DIRMODE}
	find ${PREFIX}/share/exmh -type f -print0 | xargs -0 chmod ${SHAREMODE}

.include <bsd.port.mk>
