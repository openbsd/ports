# $OpenBSD: Makefile,v 1.13 2000/10/10 00:40:32 espie Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $

DISTNAME=	nethack-3.3.0
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}

MASTER_SITE_SUBDIR= nethack

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}

NHDIR=	${DESTDIR}${PREFIX}/lib/nethackdir
MAKE_ENV+= NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}

FLAVORS=X11 qt
# Old text interface
FLAVOR?=

.if ${FLAVOR:U} == "X11"
NETHACKCONFIG=${FILESDIR}/x-config
USE_X11=	Yes
.elif ${FLAVOR:U} == "QT"
NETHACKCONFIG=${FILESDIR}/qt-config
PORTPATH=${LOCALBASE}/lib/qt2/bin:/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin
LIB_DEPENDS=qt.2.::x11/qt2
.else
NETHACKCONFIG=${FILESDIR}/simple-config
.endif

RUN_DEPENDS=${LOCALBASE}/share/doc/nethack/Guidebook.txt::games/hackdata

do-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} make recover

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/util/recover ${PREFIX}/bin
	@cd ${WRKSRC}/doc && \
	    ${INSTALL_MAN} nethack.6 recover.6 ${PREFIX}/man/man6
.if ${FLAVOR:U} == "X11"
	@mkdir -p ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && cp NetHack.ad NetHack && \
	    ${INSTALL_DATA} NetHack ${PREFIX}/lib/X11/app-defaults
.endif

.include <bsd.port.mk>
