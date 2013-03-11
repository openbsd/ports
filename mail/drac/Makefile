# $OpenBSD: Makefile,v 1.10 2013/03/11 11:23:50 espie Exp $

COMMENT=	dynamic relay authorization control daemon

DISTNAME=	drac
PKGNAME=	${DISTNAME}-1.12
REVISION =	4
CATEGORIES=	mail

HOMEPAGE=	http://mail.cc.umanitoba.ca/drac/

# BSD alike
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.cc.umanitoba.ca/src/
EXTRACT_SUFX=   .tar.Z

WRKDIST=	${WRKDIR}

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR}
USE_GROFF =	Yes

pre-build:
	cd ${WRKSRC} && perl -pi -e "s,/etc,${SYSCONFDIR},g" rpc.dracd.1m

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rpc.dracd ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKSRC}/drac.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libdrac.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/dracauth.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/rpc.dracd.1m ${PREFIX}/man/man1/rpc.dracd.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/drac
	${INSTALL_DATA} ${WRKSRC}/dracd.allow-sample ${PREFIX}/share/examples/drac/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/drac
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/drac/

.include <bsd.port.mk>
