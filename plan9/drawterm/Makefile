# $OpenBSD: Makefile,v 1.10 2017/03/20 10:43:52 jca Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el arm

COMMENT=	Plan9 terminal emulator

DISTNAME=	drawterm-20170319
EXTRACT_SUFX=	.tgz

CATEGORIES=	plan9

HOMEPAGE=	http://drawterm.9front.org/

MASTER_SITES=	http://drawterm.9front.org/

MAINTAINER=	Stanley Lieber <sl@stanleylieber.com>

# Lucent Public License Version 1.02
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c pthread sndio

NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CONF=openbsd \
		PORTS_CFLAGS="${CFLAGS}" \
		PORTS_LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/drawterm ${PREFIX}/bin

.include <bsd.port.mk>
