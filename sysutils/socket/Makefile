# $OpenBSD: Makefile,v 1.8 2000/04/01 04:34:29 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	socket-1.1
CATEGORIES=	sysutils net
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FLAGS=	CC="${CC}" SWITCHES="-DHAVE_SYS_PARAM_H -Wall" \
		CFLAGS='$$(SWITCHES) ${CFLAGS}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/socket ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/socket.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
