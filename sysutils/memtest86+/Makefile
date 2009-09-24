# $OpenBSD: Makefile,v 1.2 2009/09/24 04:57:08 form Exp $
# $RuOBSD: Makefile,v 1.4 2009/02/07 10:28:55 form Exp $

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		thorough, stand alone memory test
VERSION=		4.00
DISTNAME=		memtest86+-${VERSION}
CATEGORIES=		sysutils

HOMEPAGE=		http://www.memtest.org

MAINTAINER=		Oleg Safiullin <form@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/${VERSION}/

USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-build:
	@cd ${WRKBUILD} && sh ${WRKDIST}/makeiso.sh
	@sed -e s,!!PREFIX!!,${TRUEPREFIX},g ${FILESDIR}/README.OpenBSD \
	    > ${WRKBUILD}/README.OpenBSD

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKBUILD}/memtest ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKBUILD}/memtest_s \
	    ${PREFIX}/share/memtest86+/memtest-serial
	${INSTALL_DATA} ${WRKDIST}/memtest.bin \
	    ${PREFIX}/share/memtest86+/memtest.floppy
	${INSTALL_DATA} ${WRKDIST}/memtest_s.bin \
	    ${PREFIX}/share/memtest86+/memtest-serial.floppy
	${INSTALL_DATA} ${WRKDIST}/memtest.iso ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKDIST}/memtest_s.iso \
	    ${PREFIX}/share/memtest86+/memtest-serial.iso

.include <bsd.port.mk>
