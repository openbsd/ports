# $OpenBSD: Makefile,v 1.25 2001/10/28 13:05:46 espie Exp $

COMMENT=	"joe's own editor"

DISTNAME=	joe2.8
PKGNAME=	joe-2.8p1
CATEGORIES=	editors
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

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
