# $OpenBSD: Makefile,v 1.2 2000/04/19 00:17:18 espie Exp $

DISTNAME=		angband-283
PKGNAME=		angband-2.8.3
CATEGORIES=     	games

MAINTAINER=		ci2@gmx.net

MASTER_SITES=		ftp://export.andrew.cmu.edu/angband/Source/ \
                        ftp://ftp.sunet.se/pub/games/Angband/Source/

DISTFILES=		${DISTNAME}.tar.gz ext-x11-283.tar.gz
MAKE_FILE=		Makefile.std

# basic no fee license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}' LIBS="${LIBS}"
FAKE=			Yes

WRKSRC=			${WRKDIST}/src
HOMEPAGE=		http://www.phial.com/angband/

ALL_TARGET=		angband

FLAVORS=no_x11
FLAVOR?=

CFLAGS+= -Wall -DDEFAULT_PATH=\"${PREFIX}/share/angband/\" -DUSE_GCU 
LIBS= -lcurses -ltermcap

.if !${FLAVOR:L:Mno_x11}
CFLAGS+= -DUSE_XAW -I$(X11BASE)/include
LIBS+= -L${X11BASE}/lib -lXaw -lXmu -lXt -lX11
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/angband
	(cd ${WRKDIST}/lib && ${TAR} -cf - * ) | (cd ${PREFIX}/share/angband && tar -xf - )
	${INSTALL_DATA} ${WRKDIR}/ext-x11-283/lib/xtra/tiles.raw ${PREFIX}/share/angband/xtra
	chown -R ${SHAREOWN}:games ${PREFIX}/share/angband
	cd ${PREFIX}/share/angband && chmod 0775 apex data save user
	${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP} -o ${BINOWN} -g games -m 2555 ${WRKSRC}/angband ${PREFIX}/bin

.include <bsd.port.mk>
