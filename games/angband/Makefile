# $OpenBSD: Makefile,v 1.5 2001/02/25 04:43:59 danh Exp $
# Original from: Ben Harrison, Robert Ruehlmann

DISTNAME=	angband-291-src
PKGNAME=	angband-2.9.1
CATEGORIES=	games
MASTER_SITES=	ftp://export.andrew.cmu.edu/angband/Source/ \
		ftp://ftp.sunet.se/pub/games/Angband/Source/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://thangorodrim.angband.org/

MAINTAINER=	Carsten Ilchmann <ci2@gmx.net>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

CFLAGS+= -Wall -DDEFAULT_PATH=\"${PREFIX}/share/angband/\" -DUSE_GCU
LIBS=	-lcurses -ltermcap

MAKE_FLAGS=	CC="${CC}" CFLAGS='${CFLAGS}' LIBS="${LIBS}"
MAKE_FILE=	Makefile.std

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:L:Mno_x11}
CFLAGS+= -DUSE_XAW -I$(X11BASE)/include
LIBS+= -L${X11BASE}/lib -lXaw -lXmu -lXt -lX11
.endif

WRKDIST=	${WRKDIR}/angband-291
WRKSRC=		${WRKDIST}/src

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/angband
	(cd ${WRKDIST}/lib && ${TAR} -cf - * ) | (cd ${PREFIX}/share/angband && tar -xf - )
	@chown -R ${SHAREOWN}:games ${PREFIX}/share/angband
	${INSTALL} -o ${BINOWN} -g games -m 2555 ${WRKSRC}/angband ${PREFIX}/bin

.include <bsd.port.mk>
