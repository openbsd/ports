# $OpenBSD: Makefile,v 1.25 2002/04/10 01:24:39 espie Exp $

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
NEED_VERSION=		1.504
VERSION=		2.2.2
DISTNAME=		kdegames-${VERSION}

LIB_DEPENDS= kdecore.3,DCOP,artsflow,artsflow_idl,kdeprint,kdesu,kdeui,kfile,kio,kmedia2_idl,kparts,kssl,ksycoca,mcop,qtmcop,soundserver_idl::x11/kde/libs2
BUILD_DEPENDS=	::x11/qt2-designer

.for i in kabalone kasteroids katomic kbackgammon kblackbox kfouleggs \
kjezz kjumpingcube kmahjongg kmines konquest kpat kpoker kreversi ksame \
kshisen ksirtet ksmiletris ksnake ksokoban kspaceduel ktron ktuberling \
kwin4 lskat
#MULTI_PACKAGES+= -$i
PKGNAME-$i=$i-${VERSION}
.endfor
#MULTI_PACKAGES+= -cards
PKGNAME-cards=kdecardgames-${VERSION}
SUBST_VARS=VERSION

.if defined(PACKAGING)
.  if (${SUBPACKAGE} == "-kpat" || ${SUBPACKAGE} == "-kpoker" || ${SUBPACKAGE} == "-lskat")
RUN_DEPENDS+=	::x11/kde/games2,-cards
.  endif
.endif

.include <bsd.port.mk>
