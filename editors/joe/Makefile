# $OpenBSD: Makefile,v 1.17 2000/03/25 15:39:54 kevlo Exp $

DISTNAME=	joe2.8
PKGNAME=	joe-2.8
CATEGORIES=	editors
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
WRKDIST=	${WRKDIR}/joe
ALL_TARGET=	joe

MAKE_ENV+=	SYS_JOERC="/etc/joe" TERMINFO="1"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/joe ${PREFIX}/bin
	@cd ${PREFIX}/bin; \
		ln -sf joe jmacs; \
		ln -sf joe jpico; \
		ln -sf joe jstar; \
		ln -sf joe rjoe
	${INSTALL_MAN} ${WRKSRC}/joe.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jmacsrc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/joerc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jpicorc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/jstarrc ${PREFIX}/lib/joe
	${INSTALL_DATA} ${WRKSRC}/rjoerc ${PREFIX}/lib/joe
	@if [ ! -d /etc/joe ]; then \
		echo "***"; \
		echo "*** Finished installing joe."; \
		echo "*** Default configuration files stored in ${PREFIX}/lib/joe."; \
		echo "*** If you wish to change joe configuration, copy these"; \
		echo "*** files to /etc/joe and edit them."; \
	fi

.include <bsd.port.mk>
