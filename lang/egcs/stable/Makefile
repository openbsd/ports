# OpenBSD makefile for:	egcs
# Version required:	release 1.1b
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.2 1998/10/02 18:51:24 espie Exp $
#

# This is a configuration file for egcs, stable release
# right now, we only configure i386, C and C++.

DISTNAME=	egcs-1.1b
DIRECTORY=egcs/releases/egcs-1.1b/

DISTFILES=	egcs-core-1.1b${EXTRACT_SUFX}
DISTFILES+=     egcs-g++-1.1b${EXTRACT_SUFX}
# see files/tests for testing procedure
#DISTFILES+=egcs-tests-1.1b${EXTRACT_SUFX}

CATEGORIES=	lang 
MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
MASTER_SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}

MAINTAINER=	Marc.Espie@openbsd.org

BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

# will improve over time as more and more architectures are handled
ONLY_FOR_ARCHS = i386 amiga atari hp300 mac68k mvme68k

GNU_CONFIGURE=	yes
USE_GMAKE= yes

# don't make bootstrap if you're impatient/you know what you're doing
# use bootstrap-lean if you don't have room.
ALL_TARGET=bootstrap

CONFIGURE_SCRIPT=../source/configure

CONFIGURE_ENV=CFLAGS=-O2
CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose \
--program-transform-name=s,^,e,
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=--enable-shared
.endif

# get openbsd configuration files where they should be
post-patch:
	cp -R ${FILESDIR}/config/* ${WRKSRC}
	rm -rf ${WRKSRC}/texinfo

# rebuild configure file after patching, then move file around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# + kludge to build in a separate directory.
pre-configure:
	cd ${WRKSRC}/gcc && autoconf
	mv ${WRKSRC} ${WRKDIR}/source
	mkdir ${WRKSRC}

# use the same trick that's used for emacs
pre-install:
.if (${MACHINE_ARCH} != "alpha")
	${RM} -f ${PKGDIR}/PLIST
	${SED} -e "s/ARCH/`${WRKDIR}/source/config.guess`/" ${FILESDIR}/PLIST.template >${PKGDIR}/PLIST
.else
	cp ${FILESDIR}/PLIST.alpha ${PKGDIR}/PLIST
.endif
	
pre-install:
.include <bsd.port.mk>
