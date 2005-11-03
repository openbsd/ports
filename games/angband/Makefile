# $OpenBSD: Makefile,v 1.14 2005/11/03 17:01:05 niallo Exp $
# Original from: Robert Ruehlmann

COMMENT=		"rogue-like game with X11 support"
COMMENT-no_x11=		"rogue-like game"

DISTNAME=		angband-3.0.6
CATEGORIES=     	games

HOMEPAGE=		http://thangorodrim.angband.org/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"unclear license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= "unclear license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		ftp://clockwork.dementia.org/angband/Source/ \
			ftp://ftp.sunet.se/pub/games/Angband/Source/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-setgid=games
CONFIGURE_ENV=          TRUEPREFIX="${TRUEPREFIX}"

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11 Xaw Xext Xmu Xt
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/angband
	(cd ${WRKDIST}/lib && tar -cf - * ) | \
	   (cd ${PREFIX}/share/angband && tar -xf - )
	@chown -R ${SHAREOWN}:games ${PREFIX}/share/angband
	@find ${PREFIX} \( -name Makefile\* -o -name delete.me \) \
           -exec rm "{}" \;
	${INSTALL} -s -o ${BINOWN} -g games -m 2555 ${WRKSRC}/src/angband \
	   ${PREFIX}/bin

.include <bsd.port.mk>
