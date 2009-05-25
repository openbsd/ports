# $OpenBSD: Makefile,v 1.24 2009/05/25 16:15:19 naddy Exp $

COMMENT=	Tcl/Tk CD player
DISTNAME=	xcd-1.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio

# custom free license; see top of cdplayer.cc
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/tk
WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=jmz/}

MAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		CDDIR=${PREFIX}/lib/xcd \
		MANDIR=${PREFIX}/man/man1

FAKE_FLAGS=	BINDIR=${WRKINST}${PREFIX}/bin \
		CDDIR=${WRKINST}${PREFIX}/lib/xcd \
		MANDIR=${WRKINST}${PREFIX}/man/man1
WRKDIST=	${WRKDIR}/xcd

MODTK_VERSION=	8.4
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_REGRESS=	Yes

do-configure:
	@perl -pi -e "s,!!WISH!!,${MODTK_BIN}," ${WRKDIST}/xcd.in

.include <bsd.port.mk>
