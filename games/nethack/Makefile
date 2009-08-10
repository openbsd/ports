# $OpenBSD: Makefile,v 1.45 2009/08/10 06:31:42 kili Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $

COMMENT=	dungeon explorin', hackin', game.  Piece of cake
V=3.4.3
DISTNAME=	nethack-$V
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nethack/} \
		ftp://ftp.planetmirror.com/pub/nethack/nh${V:S/.//g}/src/ \
		http://www.nethack.de/download/
DISTFILES=	nethack-${V:S/.//g}-src.tgz

HOMEPAGE=	http://nethack.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termlib

FAKE_FLAGS=PREFIX=${PREFIX}

GAMEDIR=lib/nethackdir-$V
NHDIR=	${TRUEPREFIX}/${GAMEDIR}
MAKE_ENV+= NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}

FLAVORS=no_x11 qt
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
NETHACKCONFIG=${FILESDIR}/simple-config
.elif ${FLAVOR:L} == "qt"
NETHACKCONFIG=${FILESDIR}/qt-config
MODULES=	x11/qt3
MODQT_MT=	Yes
WANTLIB+=	SM m pthread stdc++
.else
NETHACKCONFIG=${FILESDIR}/x-config
USE_X11=	Yes
WANTLIB+=	X11 Xaw Xext Xmu Xpm Xt pthread-stubs xcb
.endif

RUN_DEPENDS=:hackdata-*:games/hackdata

NO_REGRESS=	Yes
SUBST_VARS=GAMEDIR V

do-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} make recover

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/util/recover ${PREFIX}/bin/recover-$V
	${INSTALL_MAN} ${WRKSRC}/doc/nethack.6 ${PREFIX}/man/man6/nethack-$V.6
	${INSTALL_MAN} ${WRKSRC}/doc/recover.6 ${PREFIX}/man/man6/recover-$V.6
	${INSTALL_PROGRAM} ${PREFIX}/bin/nethack ${PREFIX}/bin/nethack-$V
.if ${FLAVOR:L} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && cp NetHack.ad NetHack-$V && \
	    ${INSTALL_DATA} NetHack-$V ${PREFIX}/lib/X11/app-defaults
.endif

.include <bsd.port.mk>
