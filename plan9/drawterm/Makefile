# $OpenBSD: Makefile,v 1.4 2016/09/16 09:42:57 czarkoff Exp $

ONLY_FOR_ARCHS=	i386 amd64 powerpc sparc64 mips64 mips64el

COMMENT=	Plan9 terminal emulator

COMMIT_ID=	d9813b086ec6
DISTNAME=	drawterm-20160914
CATEGORIES=	plan9

HOMEPAGE=	http://drawterm.9front.org/

DISTFILES=	${DISTNAME}{${COMMIT_ID}}${EXTRACT_SUFX}
MASTER_SITES=	https://code.9front.org/hg/drawterm/archive/

MAINTAINER=	Stanley Lieber <sl@stanleylieber.com>

# Lucent Public License Version 1.02
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c pthread sndio

NO_TEST=	Yes
MAKE_FLAGS=	CONF=openbsd

WRKDIST=	${WRKDIR}/drawterm-${COMMIT_ID}/

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/drawterm ${PREFIX}/bin

.include <bsd.port.mk>
