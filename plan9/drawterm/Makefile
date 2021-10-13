# $OpenBSD: Makefile,v 1.19 2021/10/13 00:25:47 abieber Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el arm aarch64

COMMENT=	Plan9 terminal emulator

V=		e65af5d4e422db4722e2cc026ecca5607dedfc5a
DISTNAME=	drawterm-20211008
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{snap${EXTRACT_SUFX}}
WRKDIST=	${WRKDIR}/drawterm

CATEGORIES=	plan9

HOMEPAGE=	http://drawterm.9front.org/

MASTER_SITES=	http://git.9front.org/git/plan9front/drawterm/${V}/

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
