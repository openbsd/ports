# $OpenBSD: Makefile,v 1.23 2002/03/24 16:24:36 espie Exp $

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
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

LIB_DEPENDS= kdecore.3,DCOP,artsflow,artsflow_idl,kdeprint,kdesu,kdeui,kfile,kio,kmedia2_idl,kparts,kssl,ksycoca,mcop,qtmcop,soundserver_idl::x11/kde/libs2
BUILD_DEPENDS=	::x11/qt2-designer

MODULES=qt2

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--without-motif

PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*

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

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-debug

USE_GMAKE=		Yes
CONFIGURE_ENV=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}

CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>
