# $OpenBSD: Makefile,v 1.83 2001/03/17 16:15:50 wilfried Exp $

# This is a configuration file for egcs, snapshot flavor

COM=		'GNU compiler collection (experimental)'
COMMENT=	${COM}: core C compiler
COMMENT-c++=	${COM}: C++ compiler
COMMENT-chill=	${COM}: Chill compiler
COMMENT-g77=	${COM}: f77 compiler
COMMENT-java=	${COM}: java compiler
COMMENT-objc=	${COM}: obj C compiler

PKGNAME=	${DISTNAME}-core
PKGNAME-c++=	${DISTNAME}-c++
PKGNAME-chill=	${DISTNAME}-chill
PKGNAME-g77=	${DISTNAME}-g77
PKGNAME-java=	${DISTNAME}-java
PKGNAME-objc=	${DISTNAME}-objc

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf::devel/autoconf

CATEGORIES=	lang 
NEED_VERSION=	1.361
MAINTAINER=	Marc Espie <espie@openbsd.org>


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
MAKE_TESTS=yes
MAKE_GXX=Yes
MAKE_FORTRAN=Yes
# we don't care about chill
#MAKE_CHILL=yes
MAKE_OBJC=Yes
MAKE_JAVA=Yes

MULTI_PACKAGES=
# No sub packages description
DESCR=${PKGDIR}/DESCR

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

.if defined(MAKE_TESTS) && ${MAKE_TESTS:L} == "yes"
BUILD_DEPENDS+=	runtest::lang/egcs/dejagnu
.endif

# No way around it, java wants a pure parser
.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
BUILD_DEPENDS+=bison::devel/bison
.endif

LATEST_DATE=2000-07-31

#### fetch section
# configuration is built so that you can test the next snapshot easily,
# define NEXT_DATE to the next snapshot... 

# You also may have to remove/add some patches, as these things ARE
# usually passed along to the egcs ml.
#NEXT_DATE=2000-02-21
#PATCH_DEBUG=yes

LATEST=${LATEST_DATE:S/-//g}
DIRECTORY=snapshots/%DATE%/
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

SITES+= ftp://ftp.uvsq.fr/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.grolier.fr/pub/egcs/${DIRECTORY}
SITES+= ftp://gd.tuwien.ac.at/gnu/gcc/${DIRECTORY}
SITES+= ftp://chardonnay.elis.rug.ac.be/pub/mirrors/gcc.cygnus.com/pub/gcc/${DIRECTORY}
SITES+= ftp://gd.tuwien.ac.at/gnu/gcc/${DIRECTORY}
SITES+=	ftp://egcs.cygnus.com/pub/egcs/${DIRECTORY} 
SITES+= ftp://ftp.goof.com/pub/pcg/egcs/${DIRECTORY}
SITES+= ftp://go.cygnus.com/pub/ftp.cygnus.com/egcs/${DIRECTORY}
SITES+= ftp://cambridge.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/egcs/${DIRECTORY}

SITES+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://sunsite.auc.dk/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.fu-berlin.de/unix/languages/egcs/egcs/${DIRECTORY}
SITES+= ftp://ftp.gwdg.de/pub/cygnus/egcs/${DIRECTORY}
SITES+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/egcs/${DIRECTORY}
SITES+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/egcs/${DIRECTORY}
SITES+= ftp://ftp.sunet.se/pub/gnu/egcs/${DIRECTORY}
SITES+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/egcs/${DIRECTORY}
SITES+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.ntua.gr/pub/gnu/egcs/${DIRECTORY}
SITES+= ftp://ftp.nluug.nl/pub/languages/egcs/${DIRECTORY}
SITES+= ftp://ftp.dti.ad.jp/pub/lang/egcs/${DIRECTORY}
SITES+= ftp://ftp.win.or.jp/pub/lang/egcs/${DIRECTORY}
SITES+= ftp://ftp.telewaynet.ad.jp/pub/lang/egcs/${DIRECTORY}
SITES+= ftp://ftp.lab.kdd.co.jp/lang/egcs/${DIRECTORY}
SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.crc.ca/pub/packages/egcs/${DIRECTORY}
SITES+= ftp://ftp.nc.orc.ru/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/egcs/${DIRECTORY}
SITES+= ftp://ftp.maisel.int-evry.fr/pub/linux/pentium/egcs/${DIRECTORY}
SITES+= ftp://ftp.yggdrasil.com/mirrors/site/egcs.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://unix.hensa.ac.uk/mirrors/egcs.cygnus.com/pub/egcs/${DIRECTORY}

# Can't contact those, maybe they work ?
SITES+= ftp://sunsite.mff.cuni.cz/pub/GNU/egcs/${DIRECTORY}
SITES+= ftp://sunsite.icm.edu.pl/pub/programming/egcs/${DIRECTORY}
SITES+= ftp://ftp.task.gda.pl/mirror/egcs.cygnus.com/pub/egcs/${DIRECTORY}
SITES+= ftp://ftp.lca.uevora.pt/pub/egcs/${DIRECTORY}
SITES+= ftp://cair-archive.kaist.ac.kr/pub/gnu/egcs/${DIRECTORY}
SITES+= ftp://linux.ihep.su/pub/cygnus/egcs/${DIRECTORY}
SITES+= ftp://linux.cis.nctu.edu.tw/pub/packages/pcg/egcs/${DIRECTORY}
SITES+= ftp://ftp.ninemoons.com/pub/mirrors/egcs/${DIRECTORY}

# Bad mirrors (no snapshot)
# ftp.lip6.fr, ftp.ilog.fr, ftp.irisa.fr
# No route to host
# mirrors.aarnet.edu.au
#SITES+=	ftp://ftp.lip6.fr/pub/egcs/${DIRECTORY}
#SITES+= ftp://ftp.ilog.fr/pub/Mirrors/egcs/${DIRECTORY}
#SITES+= ftp://ftp.irisa.fr/pub/mirrors/egcs.cygwin.com/gcc/${DIRECTORY}
MASTER_SITES=${SITES:S/%DATE%/${LATEST_DATE}/}

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

CONFIGURE_STYLE=	gnu dest

#CONFIGURE_SCRIPT=../source/configure

LANGS=c
.if defined(MAKE_GXX)
LANGS:=${LANGS},c++
.endif
.if defined(MAKE_FORTRAN)
LANGS:=${LANGS},f77
.endif
.if defined(MAKE_CHILL)
LANGS.=${LANGS},CHILL
.endif
.if defined(MAKE_OBJC)
LANGS:=${LANGS},objc
.endif
.if defined(MAKE_JAVA)
LANGS:=${LANGS},java
.endif

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS=-O2 -g


CONFIGURE_ARGS= --verbose --program-transform-name=s,^,e, \
--disable-nls 

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS+=--enable-cpp
CONFIGURE_ARGS+=--enable-languages=${LANGS}


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

