# $OpenBSD: Makefile,v 1.14 2019/12/12 03:28:26 abieber Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el arm

COMMENT=	Plan9 terminal emulator

V=		ccc01167ee60
DISTNAME=	drawterm-20191211
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{${V}${EXTRACT_SUFX}}
WRKDIST=	${WRKDIR}/drawterm-${V}
EXTRACT_SUFX=	.tar.gz

CATEGORIES=	plan9

HOMEPAGE=	http://drawterm.9front.org/

MASTER_SITES=	https://code.9front.org/hg/drawterm/archive/

MAINTAINER=	Stanley Lieber <sl@stanleylieber.com>

# Lucent Public License Version 1.02
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c pthread sndio

NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CONF=openbsd \
		PORTS_CFLAGS="${CFLAGS}" \
		PORTS_LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/drawterm ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/drawterm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
