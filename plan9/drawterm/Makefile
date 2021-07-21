# $OpenBSD: Makefile,v 1.18 2021/07/21 18:04:01 abieber Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el arm

COMMENT=	Plan9 terminal emulator

V=		c97fe4693f6112504d6f13fab46f7cc8b27685c1
DISTNAME=	drawterm-20210628
WRKDIST=	${WRKDIR}/drawterm
EXTRACT_SUFX=	.tar.gz
REVISION=	0

CATEGORIES=	plan9

HOMEPAGE=	http://drawterm.9front.org/

MASTER_SITES=	https://deftly.net/dist/

MAINTAINER=	Stanley Lieber <sl@stanleylieber.com>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c pthread sndio

NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CONF=openbsd \
		PORTS_CFLAGS="${CFLAGS}" \
		PORTS_LDFLAGS="${LDFLAGS}"

# Uses deprecated Darwin assembly syntax that clang's assembler does not support
.if ${MACHINE_ARCH:Mpowerpc}
CFLAGS +=	-fno-integrated-as
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/drawterm ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/drawterm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
