# $OpenBSD: Makefile,v 1.21 2001/01/17 18:34:01 brad Exp $

DISTNAME=	joe2.8
PKGNAME=	joe-2.8p1
CATEGORIES=	editors
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}" EXTRALIBS="-lcurses" TERMINFO="1" \
		WHERERC="${SYSCONFDIR}/joe"

ALL_TARGET=	joe

WRKDIST=	${WRKDIR}/joe

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/joe
	${INSTALL_PROGRAM} ${WRKSRC}/joe ${PREFIX}/bin
	@cd ${PREFIX}/bin; \
		ln -sf joe jmacs; \
		ln -sf joe jpico; \
		ln -sf joe jstar; \
		ln -sf joe rjoe
	${INSTALL_MAN} ${WRKSRC}/joe.1 ${PREFIX}/man/man1
	cd ${WRKSRC}; ${INSTALL_DATA} \
		jmacsrc joerc jpicorc jstarrc rjoerc \
			${PREFIX}/share/examples/joe

.include <bsd.port.mk>
