# OpenBSD makefile for:	egcs
# Version required:	release 1.1.1, preparing for 1.1.2
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.15 1999/03/09 17:12:05 espie Exp $
#

# This is a configuration file for egcs, stable release.

# it only works right with a recent bsd.port.mk.
NEED_VERSION=1.73

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

CATEGORIES=	lang 
MAINTAINER=	Marc.Espie@openbsd.org

# These are the only archs that don't exhibit problems right out of the
# box right now. see egcs-snapshot for credits
# If you use another platform, go to egcs-snapshot instead

ONLY_FOR_ARCHS = i386 sparc m68k alpha

# user configuration section

# see files/tests for testing procedure
MAKE_TESTS=no
MAKE_GXX=yes
MAKE_FORTRAN=yes
MAKE_OBJC=yes
# not in the 1.1.x releases
#MAKE_CHILL=yes
#MAKE_JAVA=yes

.if defined(MAKE_TESTS)
BUILD_DEPENDS+=	runtest:${PORTSDIR}/devel/dejagnu
.endif

# if you want/need to use the mammoth archive. 
# XXX: I'm not sure partial archives work
ONE_ARCHIVE=yes

#### fetch section
VERSION= 1.1.2-pre2
PREPATCH= 1.1.2-pre3

DIRECTORY=egcs/%SUBDIR%/

# getting the right archives where they should be
MASTER_SITE_SUBDIR=snapshots/egcs-1.1.2-prerelease
PATCH_SITE_SUBDIR=snapshots/egcs-1.1.2-prerelease
.if defined(PREPATCH)
DISTNAME= egcs-${PREPATCH}
.else
DISTNAME= egcs-${VERSION}
.endif

DIST_SUBDIR=egcs

PATCH_DIST_STRIP=-p1

.if defined(ONE_ARCHIVE)
DISTFILES= egcs-${VERSION}${EXTRACT_SUFX}
.else

DISTFILES=	egcs-core-${VERSION}${EXTRACT_SUFX}
.if defined(MAKE_GXX)
DISTFILES+=     egcs-g++-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_TESTS)
DISTFILES+=egcs-tests-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_FORTRAN)
DISTFILES+=egcs-g77-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_OBJC)
DISTFILES+=egcs-objc-${VERSION}${EXTRACT_SUFX}
.endif
.endif

MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
MASTER_SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}
MASTER_SITES+=	ftp://mirror.aarnet.edu.au/pub/${DIRECTORY}
MASTER_SITES+= ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
MASTER_SITES+= ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
MASTER_SITES+= ftp://cambridge.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ninemoons.com/pub/mirrors/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://gd.tuwien.ac.at/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ilog.fr/pub/Mirrors/${DIRECTORY}
MASTER_SITES+= ftp://ftp.irisa.fr/pub/mirrors/${DIRECTORY}
MASTER_SITES+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.auc.dk/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.fu-berlin.de/unix/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.gwdg.de/pub/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/${DIRECTORY}
MASTER_SITES+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/${DIRECTORY}
MASTER_SITES+= ftp://ftp.sunet.se/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ntua.gr/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.nluug.nl/pub/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.dti.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.win.or.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.telewaynet.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lab.kdd.co.jp/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.crc.ca/pub/packages/egcs/%SUBDIR%/
MASTER_SITES+= ftp://ftp.nc.orc.ru/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/${DIRECTORY}
MASTER_SITES+= ftp://ftp.maisel.int-evry.fr/pub/linux/pentium/${DIRECTORY}
MASTER_SITES+= ftp://ftp.yggdrasil.com/mirrors/site/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://unix.hensa.ac.uk/mirrors/egcs.cygnus.com/pub/${DIRECTORY}

# couldn't contact those, maybe they work ?
MASTER_SITES+= ftp://sunsite.mff.cuni.cz/pub/GNU/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.icm.edu.pl/pub/programming/${DIRECTORY}
MASTER_SITES+= ftp://ftp.task.gda.pl/mirror/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lca.uevora.pt/pub/${DIRECTORY}
MASTER_SITES+= ftp://cair-archive.kaist.ac.kr/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://linux.ihep.su/pub/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://linux.cis.nctu.edu.tw/pub/packages/pcg/${DIRECTORY}

PATCH_SITES= ${MASTER_SITES}

# prepare for new release
.if defined(PREPATCH)
.if defined(ONE_ARCHIVE)
PATCHFILES+= egcs-${VERSION}-${PREPATCH}.diff.gz
.else

PATCHFILES+= egcs-core-${VERSION}-${PREPATCH}.diff.gz
.if defined(MAKE_GXX)
PATCHFILES+= egcs-g++-${VERSION}-${PREPATCH}.diff.gz
.endif
.if defined(MAKE_TESTS)
PATCHFILES+= egcs-tests-${VERSION}-${PREPATCH}.diff.gz
.endif
.if defined(MAKE_FORTRAN)
PATCHFILES+= egcs-g77-${VERSION}-${PREPATCH}.diff.gz
.endif
.if defined(MAKE_OBJC)
PATCHFILES+= egcs-objc-${VERSION}-${PREPATCH}.diff.gz
.endif
.endif

.endif

# synch the date
.if defined(PREPATCH)
post-extract:
	${MV} ${WRKDIR}/egcs-${VERSION} ${WRKSRC}
.endif

#### 
# Patch section

PATCH_LIST=patch-core-*
.if defined(MAKE_GXX)
PATCH_LIST+=patch-g++-*
.endif
.if defined(MAKE_OBJC)
PATCH_LIST+=patch-objc-*
.endif
.if defined(MAKE_CHILL)
PATCH_LIST+=patch-chill-*
.endif
.if defined(MAKE_FORTRAN)
PATCH_LIST+=patch-g77-*
.endif
.if defined(MAKE_JAVA)
PATCH_LIST+=patch-java-*
.endif

# get openbsd configuration files where they should be
post-patch:
	${CP} -R ${FILESDIR}/config/* ${WRKSRC}
	${RM} -rf ${WRKSRC}/texinfo 
.if !defined(MAKE_GXX)
	-${RM} -rf ${WRKSRC}/gcc/cp ${WRKSRC}/libstdc++ ${WRKSRC}/libio
.endif
.if !defined(MAKE_FORTRAN)
	-${RM} -rf ${WRKSRC}/gcc/f ${WRKSRC}/libf2c
.endif
.if !defined(MAKE_OBJC)
	-${RM} -rf ${WRKSRC}/gcc/objc
.endif

####
# configure section
#

GNU_CONFIGURE=	yes

CONFIGURE_ENV=CFLAGS=-O2
CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --with-gnu-ld --with-gnu-as \
--program-transform-name=s,^,e,

CONFIGURE_ARGS+=${CONFIGURE_SHARED}

SEPARATE_BUILD=yes

# rebuild configure files after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
pre-configure:
	cd ${WRKSRC}/gcc && PATH=${PORTPATH} autoreconf
	cd ${WRKSRC}/libiberty && PATH=${PORTPATH} autoreconf

####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to MAINTAINER.
#USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap
# ALL_TARGET=bootstrap-lean
.if defined(MAKE_TESTS)
ALL_TARGET+=check
.endif

# XXX we need to override do-build to get the warnings from within make
do-build:
	@(cd ${WRKBUILD}; \
	${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET} 2>warnings) || \
	(echo "Make bootstrap failed."; \
	echo "Don't forget to look at ${WRKBUILD}/warnings"; ${FALSE})

####
# Install section

PLIST=${WRKBUILD}/PLIST

M4FLAGS=-Uinclude -DDISTNAME=${DISTNAME}
.if defined(MAKE_GXX)
M4FLAGS+= -DGXX
.endif
.if defined(MAKE_FORTRAN)
M4FLAGS+= -DFORTRAN
.endif
.if defined(MAKE_CHILL)
M4FLAGS+= -DCHILL
.endif
.if defined(MAKE_OBJC)
M4FLAGS+= -DOBJC
.endif
.if defined(MAKE_JAVA)
M4FLAGS+= -DJAVA
.endif

pre-install:
	${M4} ${M4FLAGS} -DARCH=`${WRKSRC}/config.guess` \
	-DVERSION=`${SED} -e 's/.*\"\(egcs-[0-9.]*\) .*/\1/' <${WRKSRC}/gcc/version.c` \
	<${FILESDIR}/PLIST.template >${PLIST}

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
M4FLAGS+= -DDYNAMIC
.endif
