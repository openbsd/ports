# $OpenBSD: Makefile,v 1.11 2002/12/29 15:10:07 fgsch Exp $
# Original from: Robert Ruehlmann

COMMENT=		"rogue-like game with X11 support"
COMMENT-no_x11=		"rogue-like game"

DISTNAME=		angband-2.9.3
CATEGORIES=     	games

HOMEPAGE=		http://thangorodrim.angband.org/

MAINTAINER=		Carsten Ilchmann <ci2@gmx.net>

PERMIT_PACKAGE_CDROM=	"unclear license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= "unclear license"
PERMIT_DISTFILES_FTP=	Yes

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
