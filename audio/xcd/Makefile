# $OpenBSD: Makefile,v 1.33 2017/07/23 09:26:26 espie Exp $

COMMENT =	Tcl/Tk CD player
DISTNAME =	xcd-1.7
REVISION =	5
CATEGORIES =	audio
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# custom free license; see top of cdplayer.cc
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_FREEBSD_LOCAL:=jmz/}

MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

MAKE_FLAGS =	BINDIR=${PREFIX}/bin \
		CDDIR=${PREFIX}/lib/xcd \
		MANDIR=${PREFIX}/man/man1

FAKE_FLAGS =	BINDIR=${WRKINST}${PREFIX}/bin \
		CDDIR=${WRKINST}${PREFIX}/lib/xcd \
		MANDIR=${WRKINST}${PREFIX}/man/man1

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/xcd

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/xcd.in

.include <bsd.port.mk>
