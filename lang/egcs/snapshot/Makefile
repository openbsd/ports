# $OpenBSD: Makefile,v 1.73 2000/06/27 22:14:26 espie Exp $

# This is a configuration file for egcs, snapshot flavor
# PLEASE use the regular egcs-stable for serious work, resort to this one
# for experimentations and testing.

# it only works right with a recent bsd.port.mk.

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf::devel/autoconf

CATEGORIES=	lang 
NEED_VERSION=	1.302
MAINTAINER=	Marc.Espie@openbsd.org


# experimental port, changes once a week, don't bother remirroring distfiles.

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM="Probably meaningless"
PERMIT_DISTFILES_CDROM="Probably meaningless"

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
MAKE_GXX=Yes
MAKE_FORTRAN=Yes
# we don't care about chill
#MAKE_CHILL=yes
MAKE_OBJC=Yes
MAKE_JAVA=Yes

MULTI_PACKAGES=
# No sub packages description
DESCR=${PKGDIR}/DESCR
SUBPACKAGE?=
.if empty(SUBPACKAGE)
PKGNAME=${DISTNAME}-core
.endif


PATCH_LIST=patch-core-*
.if defined(MAKE_GXX)
PATCH_LIST+=patch-g++-*
MULTI_PACKAGES+=-c++
.endif
.if defined(MAKE_OBJC)
PATCH_LIST+=patch-objc-*
MULTI_PACKAGES+=-objc
.endif
.if defined(MAKE_CHILL)
PATCH_LIST+=patch-chill-*
MULTI_PACKAGES+=-chill
.endif
.if defined(MAKE_FORTRAN)
PATCH_LIST+=patch-g77-*
MULTI_PACKAGES+=-g77
.endif
.if defined(MAKE_JAVA)
PATCH_LIST+=patch-java-*
MULTI_PACKAGES+=-java
.endif

.if defined(MAKE_TESTS)
BUILD_DEPENDS+=	runtest::devel/dejagnu
.endif

LATEST_DATE=2000-06-26

#### fetch section
# configuration is built so that you can test the next snapshot easily,
# define NEXT_DATE to the next snapshot... 

# You also may have to remove/add some patches, as these things ARE
# usually passed along to the egcs ml.
#NEXT_DATE=2000-02-21
#PATCH_DEBUG=yes

LATEST=${LATEST_DATE:S/-//g}
DIRECTORY=egcs/snapshots/%DATE%/
.if defined(NEXT_DATE)
NEXT=${NEXT_DATE:S/-//g}
DISTNAME=	egcs-${NEXT}
.else
DISTNAME=   egcs-${LATEST}
.endif

# getting the right archives where they should be
MASTER_SITE_SUBDIR=${LATEST_DATE}
PATCH_SITE_SUBDIR=${NEXT_DATE}

DIST_SUBDIR=egcs

PATCH_DIST_STRIP=-p1

DISTFILES=  egcs-${LATEST}${EXTRACT_SUFX}

SITES=	
SITES+=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}
SITES+= ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
SITES+= ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
SITES+= ftp://cambridge.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://gd.tuwien.ac.at/gnu/${DIRECTORY}
SITES+= ftp://ftp.ilog.fr/pub/Mirrors/${DIRECTORY}
SITES+= ftp://ftp.irisa.fr/pub/mirrors/${DIRECTORY}

SITES+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://sunsite.auc.dk/pub/${DIRECTORY}
SITES+= ftp://ftp.fu-berlin.de/unix/languages/${DIRECTORY}
SITES+= ftp://ftp.gwdg.de/pub/cygnus/${DIRECTORY}
SITES+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/${DIRECTORY}
SITES+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/${DIRECTORY}
SITES+= ftp://ftp.sunet.se/pub/gnu/${DIRECTORY}
SITES+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/${DIRECTORY}
SITES+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://ftp.ntua.gr/pub/gnu/${DIRECTORY}
SITES+= ftp://ftp.nluug.nl/pub/languages/${DIRECTORY}
SITES+= ftp://ftp.dti.ad.jp/pub/lang/${DIRECTORY}
SITES+= ftp://ftp.win.or.jp/pub/lang/${DIRECTORY}
SITES+= ftp://ftp.telewaynet.ad.jp/pub/lang/${DIRECTORY}
SITES+= ftp://ftp.lab.kdd.co.jp/lang/${DIRECTORY}
SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://ftp.crc.ca/pub/packages/${DIRECTORY}
SITES+= ftp://ftp.nc.orc.ru/pub/${DIRECTORY}
SITES+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/${DIRECTORY}
SITES+= ftp://ftp.maisel.int-evry.fr/pub/linux/pentium/${DIRECTORY}
SITES+= ftp://ftp.yggdrasil.com/mirrors/site/egcs.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://unix.hensa.ac.uk/mirrors/egcs.cygnus.com/pub/${DIRECTORY}

# Can't contact those, maybe they work ?
SITES+= ftp://sunsite.mff.cuni.cz/pub/GNU/${DIRECTORY}
SITES+= ftp://sunsite.icm.edu.pl/pub/programming/${DIRECTORY}
SITES+= ftp://ftp.task.gda.pl/mirror/egcs.cygnus.com/pub/${DIRECTORY}
SITES+= ftp://ftp.lca.uevora.pt/pub/${DIRECTORY}
SITES+= ftp://cair-archive.kaist.ac.kr/pub/gnu/${DIRECTORY}
SITES+= ftp://linux.ihep.su/pub/cygnus/${DIRECTORY}
SITES+= ftp://linux.cis.nctu.edu.tw/pub/packages/pcg/${DIRECTORY}
SITES+= ftp://ftp.ninemoons.com/pub/mirrors/${DIRECTORY}

MASTER_SITES=${SITES:S/%DATE%/${LATEST_DATE}/}

FAKE=		Yes
FAKE_FLAGS=	DESTDIR=${WRKINST}
# add a possible next snapshot

.if defined(NEXT)
PATCHFILES=egcs-${LATEST}-${NEXT}.diff.gz
.endif

makesum:
	@echo 1>&2 ">>>Please make addsum to avoid clobbering old checksums"
	@exit 1

# synch the date
.if defined(NEXT)
post-extract:
	mv ${WRKDIR}/egcs-${LATEST} ${WRKSRC}
.endif


#### 
# Patch section

# get openbsd configuration files where they should be
post-patch:
	cp -R ${FILESDIR}/config/* ${WRKSRC}
	cp -R ${FILESDIR}/include/* ${WRKSRC}/gcc/ginclude
	cd ${WRKSRC} && contrib/gcc_update --touch
# rebuild configure files after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
	cd ${WRKSRC}/gcc && PATH=${PORTPATH} autoconf
	cd ${WRKSRC}/libiberty && PATH=${PORTPATH} autoconf
	cd ${WRKSRC}/libf2c/libI77 && PATH=${PORTPATH} autoconf
	cd ${WRKSRC} && rm -rf texinfo




####
# configure section
#
# define AS_PATH/LD_PATH is you don't want to use the default as/ld.
# This should not be used for regular releases, but if you're using this
# snapshot, you know what you're doing, don't you ?

HAS_CONFIGURE=	yes

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

CFLAGS=-O2
CONFIGURE_ENV=LANGUAGES='${LANGS}'  



CONFIGURE_ARGS= --prefix='$${DESTDIR}${PREFIX}' \
--verbose --program-transform-name=s,^,e, \
--disable-subdir-texinfo \
--disable-nls

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

SEPARATE_BUILD=concurrent
#WRKBUILD=${WRKDIR}/build-${MACHINE_ARCH}



####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to MAINTAINER.
#USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap 
#ALL_TARGET=bootstrap3
# ALL_TARGET=bootstrap-lean

# desactivate the fixincludes mechanism by supplying a script which does
# nothing
pre-build:
	sed -e s,@WRKBUILD@,${WRKBUILD}, -e s,@FILESDIR@,${FILESDIR}, \
	${FILESDIR}/fixinc.sh.m4 >${WRKSRC}/gcc/fixinc/openbsd-special
	chmod a+x ${WRKSRC}/gcc/fixinc/openbsd-special
	echo "cp ${WRKSRC}/gcc/fixinc/openbsd-special ${WRKBUILD}/gcc/fixinc.sh" >${WRKSRC}/gcc/fixinc/mkfixinc.sh

####
# Install & tests section 

post-build:
		# avoid packaging include copies along...
	find ${WRKBUILD} -name \*.orig|xargs rm
	mkdir -p ${WRKBUILD}/gcc/include/machine
	cp ${FILESDIR}/include/machine/ansi.h ${WRKBUILD}/gcc/include/machine

# Tests still need to be performed at the end of install, I don't know why.
.if defined(MAKE_TESTS)
TEST_RESULT=${WRKBUILD}/test.result

post-install:
	@(cd ${WRKBUILD}; ulimit -c 0; \
	${MAKE_ENV} make -f ${MAKE_FILE} check && \
	${WRKSRC}/contrib/test_summary >${TEST_RESULT})
	@echo "Please send the tests results to the egcs project"
	@echo "By invoking make send-results"

send-results: 
	[ -f ${TEST_RESULT} ] && sh ${TEST_RESULT}
.else
.endif

SED_PLIST=|sed -e s/@GCCARCH@/`${GCC_NAME} -dumpmachine`/ \
	-e s/@VERSION@/`${GCC_NAME} -dumpversion`/ \
	-e 's/@COREPKG@/${DISTNAME}-core/'

GCC_NAME=${WRKBUILD}/gcc/xgcc

.include <bsd.port.mk>

