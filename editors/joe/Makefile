# $OpenBSD: Makefile,v 1.9 1998/12/22 03:58:12 form Exp $
#

DISTNAME=	joe2.8
PKGNAME=	joe-2.8
CATEGORIES=	editors

MAINTAINER=	form@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/joe
ALL_TARGET=	joe
MAN1=		joe.1

MAKE_ENV+=	SYS_JOERC=/etc/joe TERMINFO=1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/joe ${PREFIX}/bin
	cd ${PREFIX}/bin; \
		${LN} -sf joe jmacs; \
		${LN} -sf joe jpico; \
		${LN} -sf joe jstar; \
		${LN} -sf joe rjoe
	${INSTALL_MAN} ${WRKSRC}/joe.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jmacsrc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/joerc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jpicorc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jstarrc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/rjoerc ${PREFIX}/lib/joe
	@if [ ! -d /etc/joe ]; then \
		${ECHO} "***"; \
		${ECHO} "*** Finished installing joe."; \
		${ECHO} "*** Default configuration files stored in ${PREFIX}/lib/joe."; \
		${ECHO} "*** If you wish to change joe configuration, copy these"; \
		${ECHO} "*** files to /etc/joe and edit them."; \
	fi

.include <bsd.port.mk>
