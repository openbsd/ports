# $OpenBSD: Makefile,v 1.13 2002/04/17 21:38:11 naddy Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"create tcp socket and connect to stdin/out"

DISTNAME=	socket-1.1
CATEGORIES=	sysutils net
MASTER_SITES=	http://people.freebsd.org/~wosch/src/
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" SWITCHES="-DHAVE_SYS_PARAM_H" \
		CFLAGS='$${SWITCHES} ${CFLAGS}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/socket ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/socket.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
