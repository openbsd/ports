# $OpenBSD: Makefile,v 1.43 1999/05/05 13:08:21 espie Exp $

# This is a configuration file for egcs, snapshot flavor
# PLEASE use the regular egcs-stable for serious work, resort to this one
# for experimentations and testing.

# it only works right with a recent bsd.port.mk.
NEED_VERSION=1.73

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

CATEGORIES=	lang 
MAINTAINER=	Marc.Espie@openbsd.org
MIRROR_DISTFILE=no

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
MAKE_TESTS=yes
MAKE_GXX=yes
MAKE_FORTRAN=yes
MAKE_CHILL=yes
MAKE_OBJC=yes
MAKE_JAVA=yes

.if defined(MAKE_TESTS)
BUILD_DEPENDS+=	runtest:${PORTSDIR}/devel/dejagnu
.endif

# if you want/need to use the mammoth archive
ONE_ARCHIVE=yes


LATEST_DATE=1999-05-02

#### fetch section
# configuration is built so that you can test the next snapshot easily,
# define NEXT_DATE to the next snapshot... 

# You also may have to remove/add some patches, as these things ARE
# usually passed along to the egcs ml.
#NEXT_DATE=1999-05-02
#PATCH_DEBUG=yes

LATEST != echo ${LATEST_DATE} | sed -e s/-//g;
DIRECTORY=egcs/snapshots/%SUBDIR%/
.if defined(NEXT_DATE)
NEXT != echo ${NEXT_DATE} | sed -e s/-//g;
DISTNAME=	egcs-${NEXT}
.else
DISTNAME=   egcs-${LATEST}
.endif

# getting the right archives where they should be
MASTER_SITE_SUBDIR=${LATEST_DATE}
PATCH_SITE_SUBDIR=${NEXT_DATE}

DIST_SUBDIR=egcs

PATCH_DIST_STRIP=-p1

.if defined(ONE_ARCHIVE)
DISTFILES=  egcs-${LATEST}${EXTRACT_SUFX}
.else

DISTFILES=	egcs-core-${LATEST}${EXTRACT_SUFX}
.if defined(MAKE_TESTS)
DISTFILES+=egcs-tests-${LATEST}${EXTRACT_SUFX}
.endif

.if defined(MAKE_GXX)
DISTFILES+=     egcs-g++-${LATEST}${EXTRACT_SUFX}
.endif

.if defined(MAKE_FORTRAN)
DISTFILES+=     egcs-g77-${LATEST}${EXTRACT_SUFX}
.endif

.if defined(MAKE_JAVA)
DISTFILES+=egcs-java-${LATEST}${EXTRACT_SUFX}
.endif

.if defined(MAKE_OBJC)
DISTFILES+=egcs-objc-${LATEST}${EXTRACT_SUFX}
.endif

.if defined(MAKE_CHILL)
DISTFILES+=egcs-chill-${LATEST}${EXTRACT_SUFX}
.endif

.endif

.if ! (defined(JUST_BUMP) && defined(NEXT_DATE))
SUPDISTFILES=egcs-${LATEST}${EXTRACT_SUFX}
.for sub in core tests g++ g77 java objc chill
SUPDISTFILES+=egcs-${sub}-${LATEST}${EXTRACT_SUFX}
.endfor
.endif


MASTER_SITES=	
MASTER_SITES+=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
MASTER_SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
MASTER_SITES+= ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
#MASTER_SITES+= ftp://cambridge.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://gd.tuwien.ac.at/gnu/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.ilog.fr/pub/Mirrors/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.irisa.fr/pub/mirrors/${DIRECTORY}

MASTER_SITES+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.auc.dk/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.fu-berlin.de/unix/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.gwdg.de/pub/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/${DIRECTORY}
MASTER_SITES+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/${DIRECTORY}
MASTER_SITES+= ftp://ftp.sunet.se/pub/gnu/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ntua.gr/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.nluug.nl/pub/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.dti.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.win.or.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.telewaynet.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lab.kdd.co.jp/lang/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.crc.ca/pub/packages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.nc.orc.ru/pub/${DIRECTORY}
#MASTER_SITES+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/${DIRECTORY}
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
MASTER_SITES+= ftp://ftp.ninemoons.com/pub/mirrors/${DIRECTORY}

PATCH_SITES = ${MASTER_SITES}

# add a possible next snapshot

.if defined(NEXT)
.if defined(ONE_ARCHIVE)
PATCHFILES=egcs-${LATEST}-${NEXT}.diff.gz

.else
PATCHFILES=egcs-core-${LATEST}-${NEXT}.diff.gz
.if defined(MAKE_TESTS)
PATCHFILES+=egcs-tests-${LATEST}-${NEXT}.diff.gz
.endif
.if defined(MAKE_GXX)
PATCHFILES+=egcs-g++-${LATEST}-${NEXT}.diff.gz
.if defined(MAKE_TESTS)
PATCHFILES+=egcs-g++-tests-${LATEST}-${NEXT}.diff.gz
.endif
.endif
.if defined(MAKE_FORTRAN)
PATCHFILES+=egcs-g77-${LATEST}-${NEXT}.diff.gz
.if defined(MAKE_TESTS)
PATCHFILES+=egcs-g77-testsuite-${LATEST}-${NEXT}.diff.gz
.endif
.endif
.if defined(MAKE_JAVA)
PATCHFILES+=egcs-java-${LATEST}-${NEXT}.diff.gz
.endif
.if defined(MAKE_OBJC)
PATCHFILES+=egcs-objc-${LATEST}-${NEXT}.diff.gz
.endif
.if defined(MAKE_CHILL)
PATCHFILES+=egcs-chill-${LATEST}-${NEXT}.diff.gz
.endif
.endif

SUPPATCHFILES=egcs-${LATEST}-${NEXT}.diff.gz
.for sub in core tests g++ g77 java objc chill
SUPPATCHFILES+=egcs-${sub}-${LATEST}-${NEXT}.diff.gz
.endfor

.endif

# Misc bug sections
.if (${MACHINE_ARCH} == "i386")
pre-fetch:
	@(cd /tmp && /usr/bin/as -k ${FILESDIR}/gas-bug/test-i386-gas.s) || \
	(${ECHO} "Your gas has a bug, see ${FILESDIR}/gas-bug for details"; ${FALSE})
.endif


makesum:
	@${ECHO} ">>>Please make addsum to avoid clobbering old checksums"
	@${FALSE}

# synch the date
.if defined(NEXT)
post-extract:
	${MV} ${WRKDIR}/egcs-${LATEST} ${WRKSRC}
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
	find ${WRKSRC} -name \*.orig|xargs ${RM}
	${CP} -R ${FILESDIR}/config/* ${WRKSRC}
	-${RM} -rf ${WRKSRC}/texinfo 
	cd ${WRKSRC}; \
	for f in `cat ${FILESDIR}/fixdepend`; \
	do \
		[ -f $$f ] && touch $$f; \
	done 
# rebuild configure files after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
	cd ${WRKSRC}/gcc && PATH=${PORTPATH} autoreconf
	cd ${WRKSRC}/libiberty && PATH=${PORTPATH} autoreconf




####
# configure section
#
# define AS_PATH/LD_PATH is you don't want to use the default as/ld.
# This should not be used for regular releases, but if you're using this
# snapshot, you know what you're doing, don't you ?

GNU_CONFIGURE=	yes

#CONFIGURE_SCRIPT=../source/configure

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

# Note: the configure target passes CFLAGS to the configure script anyways.

#CFLAGS='-g -O2'
CONFIGURE_ENV=LANGUAGES='${LANGS}'  



CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --program-transform-name=s,^,e, \


# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS+=--enable-cpp


# if you wish to try your luck
#CONFIGURE_ARGS+= --enable-threads=yes

.if defined(AS_PATH)
CONFIGURE_ARGS += --with-as=${AS_PATH}
.else
CONFIGURE_ARGS += --with-gnu-as 
.endif

.if defined(LD_PATH)
CONFIGURE_ARGS += --with-ld=${LD_PATH}
.else
CONFIGURE_ARGS += --with-gnu-ld 
.endif

CONFIGURE_ARGS += ${CONFIGURE_SHARED}

SEPARATE_BUILD=yes
#WRKBUILD=${WRKDIR}/build-${MACHINE_ARCH}



####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to MAINTAINER.
#USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap
# ALL_TARGET=bootstrap-lean

# desactivate the fixincludes mechanism by supplying a script which does
# nothing
pre-build:
	echo "#!/bin/sh" >${WRKBUILD}/gcc/fixinc.sh

# XXX we need to override do-build to get the warnings from within make
do-build:
	@(cd ${WRKBUILD}; \
	${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET} 2>warnings) || \
	(echo "*** Make bootstrap failed."; \
	echo "*** Look at ${WRKBUILD}/warnings for errors"; ${FALSE})

####
# Install & tests section 

# Tests no longer need to be performed at the end of install, this
# was a bug in libstdc++/openbsd.ml
.if defined(MAKE_TESTS)
TEST_RESULT=${WRKBUILD}/test.result

post-build:
	@(cd ${WRKBUILD}; ulimit -c 0; \
	${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} check && \
	${WRKSRC}/contrib/test_summary >${TEST_RESULT})
	@${ECHO} "Please send the tests results to the egcs project"
	@${ECHO} "By invoking make send-results"

send-results: ${TEST_RESULT}
	sh ${TEST_RESULT}
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

special: extract
		# avoid packaging include copies along...
	find ${WRKSRC} -name \*.orig|xargs ${RM}
	-${RM} -rf ${WRKSRC}/texinfo 
	
pre-install:
	${M4} ${M4FLAGS} -DARCH=`${WRKSRC}/config.guess` \
	-DVERSION=`${SED} -e 's/.*\(egcs-[0-9.]*\) .*/\1/' <${WRKSRC}/gcc/version.c` \
	<${FILESDIR}/PLIST.template >${PLIST}

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
M4FLAGS+= -DDYNAMIC
.endif
