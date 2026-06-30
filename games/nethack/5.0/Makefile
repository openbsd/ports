COMMENT =	dungeon explorin', hackin', game.  Piece of cake
V =		5.0.0
# what we have compatible with
BASEV =		5.0
DISTNAME =	nethack-$V
PKGNAME =	${DISTNAME}
CATEGORIES =	games
SITES =		https://www.nethack.org/download/$V/
DISTFILES =	nethack-${V:S/.//g}-src.tgz

HOMEPAGE =	http://nethack.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>
WANTLIB +=	c curses m lua5.4

# XXX for now I haven't ported the other flavors
FLAVORS = no_x11
FLAVOR ?= no_x11

CONFIG =	simple-config

RUN_DEPENDS = games/hackdata
WRKDIST =	${WRKDIR}/NetHack-$V
LIB_DEPENDS +=	lang/lua/5.4

# "NETHACK GENERAL PUBLIC LICENSE", see dat/license
PERMIT_PACKAGE =	Yes

# The game dir name actually refers to the base version
# we're compatible with
GAMEDIR = lib/nethackdir-${BASEV}
GAMEGRP = _nethack36

#FIX_EXTRACT_PERMISSIONS = Yes
MAKE_ENV = GAMEDIR=${GAMEDIR} FILESDIR=${FILESDIR} GAMEGRP=$(GAMEGRP) \
	CONFIG=$(CONFIG) V=$V


SUBST_VARS += GAMEDIR V GAMEGRP BASEV

NO_TEST =	Yes

pre-configure:
	ln -s ${FILESDIR}/openbsd ${WRKSRC}/sys/unix/hints/openbsd

do-configure:
	@cd ${WRKSRC}/sys/unix; /bin/sh setup.sh hints/openbsd
	@mkdir -p ${WRKSRC}/lib
	@ln -s ${LOCALBASE}/include/lua-5.4 ${WRKSRC}/lib

MAN= nethack recover #lev_comp dgn_comp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack-$V
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt \
		${PREFIX}/share/doc/nethack-$V/Guidebook.txt
	ln -s ${TRUEPREFIX}/${GAMEDIR}/recover ${PREFIX}/bin/recover-$V
.for i in $(MAN)
	${WRKBUILD}/util/makedefs --grep --input ${WRKSRC}/doc/$i.6 \
		--output ${PREFIX}/man/man6/$i-$V.6
.endfor

.include <bsd.port.mk>
