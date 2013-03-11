# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:31 espie Exp $
# $RuOBSD: Makefile,v 1.4 2009/02/07 10:28:55 form Exp $

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		thorough, stand alone memory test
VERSION=		4.20
DISTNAME=		memtest86+-${VERSION}
CATEGORIES=		sysutils
REVISION=		1

HOMEPAGE=		http://www.memtest.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/${VERSION}/

USE_GMAKE=		Yes
NO_TEST=		Yes

MAKE_ENV=		V=${VERSION}

post-build:
	@cd ${WRKBUILD} && sh ${WRKDIST}/makeiso.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/memtest86+
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/memtest86+
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
