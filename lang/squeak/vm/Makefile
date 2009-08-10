# $OpenBSD: Makefile,v 1.10 2009/08/10 17:31:07 kili Exp $


COMMENT =	smalltalk system, vm

SRCV =		1
DISTFILES =	Squeak-$V-${SRCV}.src.tar.gz 

PKGNAME =	squeak-vm-$V.${SRCV}p1

WRKDIST =	${WRKDIR}/Squeak-$V-${SRCV}
WRKSRC =	${WRKDIST}/platforms/unix/config

SEPARATE_BUILD =	simple

MASTER_SITES =	${SQUEAK_SITE}unix-linux/

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.60
DESTDIRNAME =		ROOT
CONFIGURE_ENV =		RANLIB=ranlib
USE_GMAKE =		Yes
USE_X11 =		Yes

WANTLIB =		GL X11 m c SM util Xext ICE Xrender Xt pthread \
			pthread-stubs xcb
FULLV =			$V-${SRCV}

.if ${MACHINE_ARCH} != "powerpc"
MAKE_FLAGS +=		INTERP=gnu-interp
.endif

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/squeak
DESTDIRNAME =		ROOT
SUBST_VARS +=		FULLV

post-extract:
	# start with the sun sound-plugin that we'll patch
	mkdir ${WRKDIST}/platforms/unix/vm-sound-OpenBSD
	cd ${WRKDIST}/platforms/unix && cp vm-sound-Sun/acinclude.m4 vm-sound-OpenBSD && cp vm-sound-Sun/sqUnixSoundSun.c vm-sound-OpenBSD/sqUnixSoundOpenBSD.c

RUN_DEPENDS =		:squeak-sources-${SOURCEV}:lang/squeak/sources

.include <bsd.port.mk>
