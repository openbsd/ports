# $OpenBSD: Makefile,v 1.18 2000/12/26 23:29:26 espie Exp $

DISTNAME=	slash-e8
PKGNAME=	slash-3.2.2-e8
CATEGORIES=	games
NEED_VERSION=	1.307
MASTER_SITES=   ftp://ftp.nethack.org/pub/nethack/oldver/3.2.2/src/ \
                ftp://ftp.uu.net/pub/games/nethack/sources/ \
                ${MASTER_SITE_GNU}

MASTER_SITES0=  ftp://ftp.nethack.org/pub/nethack/oldver/3.2.3/src/
MASTER_SITES1=	http://www.rz.tu-ilmenau.de/~wi019/Slash/

MASTER_SITE_SUBDIR= nethack
DISTFILES=	nethack-3.2.2.tar.gz Slash-Unix.tar.gz:1
PATCHFILES=nh-3.2.2-3.2.3.diff:0


MAINTAINER=	Marc Espie <espie@openbsd.org>

#	GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}

NHDIR=	${DESTDIR}${PREFIX}/lib/slashdir
MAKE_ENV+= NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}

FLAVORS=no_x11
# Old text interface
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
NETHACKCONFIG=${FILESDIR}/simple-config
.else
NETHACKCONFIG=${FILESDIR}/x-config
USE_X11=	Yes
.endif

RUN_DEPENDS=${LOCALBASE}/share/doc/nethack/Guidebook.txt::games/hackdata

post-extract:
	@cd ${WRKDIR} && mv nethack-3.2.2 ${DISTNAME}
	@cd ${WRKDIR} && mv dat/* ${DISTNAME}/dat
	@cp ${FILESDIR}/blkmar.des ${WRKSRC}/dat

post-distpatch:
	# Two patches failure, not to worry
	@-cd ${WRKSRC} && ${PATCH} -p1 -b .bak.orig -s < ${WRKDIR}/slashe8.dif
	@cd ${WRKSRC} && ${PATCH} -p1 -b .bak.orig -s < ${WRKDIR}/e8p1.dif

do-configure:
	@cd ${WRKSRC}/sys/unix && ${SH} setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} make recover
	@cd ${WRKSRC}/util && ln -f recover srecover
	@cd ${WRKSRC}/doc && perl -p ${FILESDIR}/substitute <nethack.6 >slash.6
	@cd ${WRKSRC}/doc && perl -p ${FILESDIR}/substitute <recover.6 >srecover.6

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/util/srecover ${PREFIX}/bin
	@cd ${WRKSRC}/doc && \
	    ${INSTALL_MAN} slash.6 srecover.6 ${PREFIX}/man/man6
.if ${FLAVOR:U} == "X11"
	@mkdir -p ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && \
	sed -e "s/^NetHack/Slash/; s/^!NetHack/!Slash/" <NetHack.ad > Slash && \
	${INSTALL_DATA} Slash ${PREFIX}/lib/X11/app-defaults
.endif

.include <bsd.port.mk>
