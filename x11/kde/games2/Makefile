# $OpenBSD: Makefile,v 1.7 2001/03/16 15:07:44 espie Exp $

COMMENT=		games for KDE
COMMENT-cards=		faces for kde card games
COMMENT-kabalone=	board game for kde
COMMENT-kasteroids=	asteroids clone for kde
COMMENT-katomic=	game similar to sokoban for kde
COMMENT-kbackgammon=	backgammon for kde
COMMENT-kblackbox=	graphical logic game for kde
COMMENT-kfouleggs=	PuyoPuyo clone for kde
COMMENT-kjezz=		games for kde
COMMENT-kjumpingcube=	tactical board game for kde
COMMENT-kmahjongg=	mahjongg game for kde
COMMENT-kmines=		minesweeper game for kde
COMMENT-konquest=	game of galactic conquest for kde 
COMMENT-kpat=		solitaire games for kde
COMMENT-kpoker=		video poker for kde
COMMENT-kreversi=	strategy boardgame for kde
COMMENT-ksame=		ball-matching game for kde
COMMENT-kshisen=	tile matching game for kde
COMMENT-ksirtet=	tetris clone for kde
COMMENT-ksmiletris=	tetris-like game for kde
COMMENT-ksnake=		snake racing game for kde
COMMENT-ksokoban=	japanese strategy game for kde 
COMMENT-kspaceduel=	space arcade game for kde
COMMENT-ktron=		classic tron game for kde
COMMENT-ktuberling=	virtual potato-head for kde
COMMENT-kwin4=		4 in a rows game for kde
COMMENT-lskat=		card game for two players, based on Skat

CATEGORIES=		x11 x11/kde games
NEED_VERSION=		1.361
VERSION=		2.1
DISTNAME=		kdegames-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/distribution/tar/generic/src/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--without-motif

.for i in kabalone kasteroids katomic kbackgammon kblackbox kfouleggs \
kjezz kjumpingcube kmahjongg kmines konquest kpat kpoker kreversi ksame \
kshisen ksirtet ksmiletris ksnake ksokoban kspaceduel ktron ktuberling \
kwin4 lskat
MULTI_PACKAGES+= -$i
PKGNAME-$i=$i-${VERSION}
.endfor
MULTI_PACKAGES+= -cards
PKGNAME-cards=kdecardgames-${VERSION}
SUBST_VARS=VERSION

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2 \
	RUN_KAPPFINDER=no KDEDIR=/usr/local
MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>
