# $OpenBSD: Makefile,v 1.35 2009/08/10 06:31:42 kili Exp $

COMMENT=	dungeon explorin', hackin' game, but harder than nethack

DISTNAME=	slash-e8
PKGNAME=	slash-3.2.2.e8p0
CATEGORIES=	games

MASTER_SITES=   ftp://ftp.nethack.org/pub/nethack/oldver/3.2.2/src/ \
                ftp://ftp.uu.net/pub/games/nethack/sources/ \
                ${MASTER_SITE_GNU:=nethack/}

MASTER_SITES0=  ftp://ftp.nethack.org/pub/nethack/oldver/3.2.3/src/
MASTER_SITES1=	http://www.rz.tu-ilmenau.de/~wi019/Slash/

DISTFILES=	nethack-3.2.2.tar.gz Slash-Unix.tar.gz:1 
PATCHFILES=nh-3.2.2-3.2.3.diff:0


MAINTAINER=	Marc Espie <espie@openbsd.org>

#	GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termlib

FAKE_FLAGS=PREFIX=${PREFIX}

GAMEDIR=lib/slashdir
NHDIR=	${PREFIX}/${GAMEDIR}
MAKE_ENV+= NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}
SUBST_VARS=GAMEDIR

FLAVORS=no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
NETHACKCONFIG=${FILESDIR}/simple-config
.else
NETHACKCONFIG=${FILESDIR}/x-config
WANTLIB+=	X11 Xaw Xext Xmu Xpm Xt pthread-stubs xcb
USE_X11=	Yes
.endif

RUN_DEPENDS=:hackdata-*:games/hackdata

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKDIR} && mv nethack-3.2.2 ${DISTNAME}
	@cd ${WRKDIR} && mv dat/* ${DISTNAME}/dat
	@cp ${FILESDIR}/blkmar.des ${WRKSRC}/dat

post-distpatch:
	# Two patches failure, not to worry
	@-cd ${WRKSRC} && ${PATCH} -p1 -z .bak.orig -s < ${WRKDIR}/slashe8.dif
	@echo >>${WRKSRC}/dat/knox.des	# add trailing newline
	@cd ${WRKSRC} && ${PATCH} -p1 -z .bak.orig -s < ${WRKDIR}/e8p1.dif

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
.if ${FLAVOR:L} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && \
	sed -e "s/^NetHack/Slash/; s/^!NetHack/!Slash/" <NetHack.ad > Slash && \
	${INSTALL_DATA} Slash ${PREFIX}/lib/X11/app-defaults
.endif
	@install -g games -m 0664 /dev/null ${NHDIR}/logfile
	@install -g games -m 0664 /dev/null ${NHDIR}/perm
	@install -g games -m 0664 /dev/null ${NHDIR}/record

.include <bsd.port.mk>
