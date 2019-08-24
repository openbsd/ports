# $OpenBSD: Makefile,v 1.13 2019/08/24 20:46:30 daniel Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el arm

COMMENT=	Plan9 terminal emulator

V=		5c953ddd29fa
DISTNAME=	drawterm-20190309
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{${V}${EXTRACT_SUFX}}
WRKDIST=	${WRKDIR}/drawterm-${V}
EXTRACT_SUFX=	.tar.gz

REVISION=	0

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

.include <bsd.port.mk>
