# $OpenBSD: Makefile,v 1.1.1.1 2002/11/19 22:59:51 naddy Exp $

COMMENT=		"X11 keyboard accessibility tool"
DISTNAME=		xkbset-0.3
CATEGORIES=		x11

HOMEPAGE=		http://www.math.missouri.edu/~stephen/software/#xkbset

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC} ${CFLAGS} -I${X11BASE}/include -L${X11BASE}/lib"

MASTER_SITES=		http://www.math.missouri.edu/~stephen/software/xkbset/

USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKDIST} && ${INSTALL_PROGRAM} xkbset ${PREFIX}/bin
	cd ${WRKDIST} && ${INSTALL_MAN} xkbset.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
