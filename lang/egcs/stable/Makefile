# $OpenBSD: Makefile,v 1.34 2000/09/12 16:15:44 brad Exp $

# This is a configuration file for egcs, stable release.

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf::devel/autoconf

CATEGORIES=	lang 
NEED_VERSION=	 1.328
FAKE=No
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
COMES_WITH= 2.6

# Testers for the new configurations:
# Jason L.Wright & Marco S.Hyman for sparc,
# Michael Shalayeff for hppa,
# Wim Van Deputte for alpha,
# Steve Murphee for m88k,
# Per Fogelstrom and Todd Millert for mips,
# Dale Rahn for rs6000.

# user configuration section

# see files/tests for precise testing procedure


# cygnus packaging scheme is now working, though it is weird.
# namely, testsuite holds all the tests. g++-tests no longer exists,
# and g77-tests only holds duplicates from the main testsuite archive.
#MAKE_TESTS=yes
MAKE_GXX=yes
MAKE_FORTRAN=yes
MAKE_CHILL=yes
MAKE_OBJC=yes
MAKE_JAVA=yes

.if defined(MAKE_TESTS)
BUILD_DEPENDS+=	runtest::devel/dejagnu
.endif

# if you want/need to use the mammoth archive. 
ONE_ARCHIVE=yes

#### fetch section
VERSION= 2.95.1

DIRECTORY=egcs/releases/%SUBDIR%/

# getting the right archives where they should be
MASTER_SITE_SUBDIR=gcc-2.95.1
DISTNAME= gcc-${VERSION}

DIST_SUBDIR=egcs

.if defined(ONE_ARCHIVE)
DISTFILES= gcc-${VERSION}${EXTRACT_SUFX}
.else

DISTFILES=	gcc-core-${VERSION}${EXTRACT_SUFX}
.if defined(MAKE_GXX)
DISTFILES+=     gcc-g++-${VERSION}${EXTRACT_SUFX}
.endif
#.if defined(MAKE_TESTS)
#DISTFILES+=gcc-tests-${VERSION}${EXTRACT_SUFX}
#.endif
.if defined(MAKE_FORTRAN)
DISTFILES+=gcc-g77-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_JAVA)
DISTFILES+=gcc-java-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_OBJC)
DISTFILES+=gcc-objc-${VERSION}${EXTRACT_SUFX}
.endif
.if defined(MAKE_CHILL)
DISTFILES+=gcc-chill-${VERSION}${EXTRACT_SUFX}
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

# Misc bug sections
pre-fetch:
.if (${MACHINE_ARCH} == "i386")
	@(cd /tmp && /usr/bin/as -k ${FILESDIR}/gas-bug/test-i386-gas.s) || \
	(echo "Your gas has a bug, see ${FILESDIR}/gas-bug for details"; exit 1)
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
		# avoid packaging include copies along...
	find ${WRKSRC} -name \*.orig|xargs rm
	cp -R ${FILESDIR}/config/* ${WRKSRC}
	rm -rf ${WRKSRC}/texinfo 
# rebuild configure files after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
	cd ${WRKSRC}/gcc && PATH=${PORTPATH} autoreconf
	cd ${WRKSRC}/libiberty && PATH=${PORTPATH} autoreconf

####
# configure section
#

GNU_CONFIGURE=	yes

LANGS=c
.if defined(MAKE_GXX)
LANGS+=c++
.endif
.if defined(MAKE_FORTRAN)
LANGS+=f77
.endif
.if defined(MAKE_CHILL)
LANGS+=CHILL
.endif
.if defined(MAKE_OBJC)
LANGS+=objc
.endif
.if defined(MAKE_JAVA)
LANGS+=java
.endif

CONFIGURE_ENV=LANGUAGES='${LANGS}'  

CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --with-gnu-ld --with-gnu-as \
--program-transform-name=s,^,e, \
--disable-subdir-texinfo \
--disable-nls

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS+=--enable-cpp

CONFIGURE_ARGS+=${CONFIGURE_SHARED}

# Not really stable yet
# CONFIGURE_ARGS+= --enable-threads=yes
SEPARATE_BUILD=concurrent

####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to MAINTAINER.
#USE_GMAKE= yes

# desactivate the fixincludes mechanism by supplying a script which does
# nothing
pre-build:
	echo "#!/bin/sh" >${WRKBUILD}/gcc/fixinc.sh

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap
# ALL_TARGET=bootstrap-lean
# XXX we need to override do-build to get the warnings from within make
do-build:
	@(cd ${WRKBUILD}; \
	${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f Makefile ${ALL_TARGET} 2>warnings) || \
	(echo "*** Make bootstrap failed."; \
	echo "*** Look at ${WRKBUILD}/warnings for errors"; exit 1)

####
# Install & tests section 

# Tests no longer need to be performed at the end of install, this
# was a bug in libstdc++/openbsd.ml
.if defined(MAKE_TESTS)
TEST_RESULT=${WRKBUILD}/test.result

post-build:
	@(cd ${WRKBUILD}; ulimit -c 0; \
	${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f Makefile check && \
	${WRKSRC}/contrib/test_summary >${TEST_RESULT})
	@echo "Please send the tests results to the egcs project"
	@echo "By invoking make send-results"

send-results: 
	[ -f ${TEST_RESULT} ] && sh ${TEST_RESULT}
.endif

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

GCC_NAME=${WRKBUILD}/gcc/xgcc
pre-install:
	${M4} ${M4FLAGS} -DARCH=`${GCC_NAME} -dumpmachine` \
	-DVERSION=`${GCC_NAME} -dumpversion` \
	<${FILESDIR}/PLIST.template >${PLIST}

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
M4FLAGS+= -DDYNAMIC
.endif
