# $OpenBSD: Makefile,v 1.11 2004/11/28 22:41:21 espie Exp $

COMMENT=	"dungeon explorin', hackin', game.  Hard"
DISTNAME=	se006e4f8
CATEGORIES=	games

HOMEPAGE=	http://slashem.sourceforge.net
MASTER_SITES=	http://avrc.city.ac.uk/nethack/slashem/

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termlib

PKGNAME=slash-em-3.3.1.6e4f8
WRKDIST=${WRKDIR}/slashem-0.0.6E4F8

FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}

GAMEDIR=lib/slashemdir
NHDIR=	${PREFIX}/${GAMEDIR}
MAKE_ENV+= NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}
SUBST_VARS=GAMEDIR

# qt flavor is apparently not working yet
FLAVORS=no_x11 #qt
FLAVOR?=
# ... but let fragments work
PKG_ARGS+=-Dqt=0

.if ${FLAVOR:L} == "no_x11"
NETHACKCONFIG=${FILESDIR}/simple-config
.elif ${FLAVOR:L} == "qt"
NETHACKCONFIG=${FILESDIR}/qt-config
PORTPATH=${LOCALBASE}/lib/qt2/bin:/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin
LIB_DEPENDS=qt.2.::x11/qt2
.else
NETHACKCONFIG=${FILESDIR}/x-config
USE_X11=	Yes
WANTLIB+=	X11 Xaw Xext Xmu Xpm Xt
.endif

RUN_DEPENDS=:hackdata-*:games/hackdata

NO_REGRESS=	Yes

do-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} make recover
	@cd ${WRKSRC}/util && ln -f recover strecover
	@cd ${WRKSRC}/doc && perl -p ${FILESDIR}/substitute <recover.6 >strecover.6

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/util/strecover ${PREFIX}/bin
	@cd ${WRKSRC}/doc && \
	    ${INSTALL_MAN} slashem.6 strecover.6 ${PREFIX}/man/man6
.if ${FLAVOR:L} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && \
	    ${INSTALL_DATA} SlashEM.ad ${PREFIX}/lib/X11/app-defaults/SlashEM
.endif

.include <bsd.port.mk>
