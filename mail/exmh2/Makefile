# $OpenBSD: Makefile,v 1.17 2002/06/09 05:36:50 wilfried Exp $

COMMENT=		"Tcl/Tk-based interface to the MH mail system"
DISTNAME=		exmh-2.5
CATEGORIES=     	mail
NEED_VERSION=		1.515

HOMEPAGE=		http://www.beedub.com/exmh/
MAINTAINER=		Michael Paddon <michael@paddon.org>

PERMIT_PACKAGE_CDROM=	"needs per-host configuration at build time"
PERMIT_PACKAGE_FTP=	"needs per-host configuration at build time"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_TCLTK:=exmh/}

BUILD_DEPENDS=		:itcl-8.3.*:lang/tcl/8.3
RUN_DEPENDS=		:expect-*:lang/expect\
			:nmh-*:mail/nmh\
			:metamail-*:mail/metamail\
			:tk-8.3.*:x11/tk/8.3
USE_X11=		Yes
NO_BUILD=		Yes

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
		| ${LOCALBASE}/bin/tclsh8.3
	chown -R ${SHAREOWN}.${SHAREGRP} ${PREFIX}/share/exmh
	find ${PREFIX}/share/exmh -type d | xargs chmod ${DIRMODE}
	find ${PREFIX}/share/exmh -type f | xargs chmod ${SHAREMODE}

.include <bsd.port.mk>
