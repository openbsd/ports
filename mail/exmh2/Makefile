# $OpenBSD: Makefile,v 1.12 2001/07/12 21:51:18 lebel Exp $

COMMENT=		"TCL/TK based interface to the MH mail system"
DISTNAME=		exmh-2.4
CATEGORIES=     	mail
NEED_VERSION=		1.400

HOMEPAGE=		http://www.beedub.com/exmh/
MAINTAINER=		Michael Paddon <michael@paddon.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.scriptics.com/pub/tcl/exmh/ \
			ftp://tcl.activestate.com/pub/tcl/exmh/ \
			http://dev.scriptics.com/ftp/exmh/

BUILD_DEPENDS=		tclsh8.3::lang/tcl/8.3
RUN_DEPENDS=		expect::lang/expect \
			mhparam::mail/nmh \
			mmencode::mail/metamail \
			wish8.3::x11/tk/8.3
USE_X11=		Yes
SEPARATE_BUILD=		concurrent

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh ${PREFIX}/bin/exmh
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-bg ${PREFIX}/bin/exmh-bg
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-async ${PREFIX}/bin/exmh-async
	${INSTALL_SCRIPT} ${WRKBUILD}/ftp.expect ${PREFIX}/bin/ftp.expect
	${INSTALL_SCRIPT} ${WRKBUILD}/inc.expect ${PREFIX}/bin/inc.expect
	${INSTALL_SCRIPT} ${WRKBUILD}/exmh-strip ${PREFIX}/bin/exmh-strip
	${INSTALL_MAN} ${WRKSRC}/exmh.l ${PREFIX}/man/man1/exmh.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${DISTNAME}
	cp -r ${WRKSRC}/lib/. ${PREFIX}/lib/${DISTNAME}
	cd ${PREFIX}/lib && echo 'auto_mkindex ${DISTNAME}' | tclsh8.3
	chown -R ${SHAREOWN}.${SHAREGRP} ${PREFIX}/lib/${DISTNAME}
	find ${PREFIX}/lib/${DISTNAME} -type d | xargs chmod ${DIRMODE}
	find ${PREFIX}/lib/${DISTNAME} -type f | xargs chmod ${SHAREMODE}

.include <bsd.port.mk>
