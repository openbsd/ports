# $OpenBSD: Makefile,v 1.71 2002/11/25 15:37:59 brad Exp $

ONLY_FOR_ARCHS=	alpha i386 m68k sparc sparc64 powerpc

MAKE_GXX=Yes
MAKE_FORTRAN=Yes
MAKE_OBJC=Yes


.if ${MACHINE_ARCH} == "i386"
MAKE_ADA=Yes
# Java is still mostly broken (boehm-gc)
MAKE_JAVA=Yes
.else
MAKE_JAVA=No
MAKE_ADA=No
.endif

# This is a configuration file for gcc

COM=		'GNU compiler collection'
COMMENT=	${COM}: core C compiler
COMMENT-c++ =	${COM}: C++ compiler
COMMENT-estdc=	${COM}: C++ compiler library
COMMENT-chill=	${COM}: Chill compiler
COMMENT-g77=	${COM}: f77 compiler
COMMENT-java=	${COM}: java compiler
COMMENT-objc=	${COM}: obj C compiler
COMMENT-ada=	${COM}: Ada compiler

PKGNAME=	gcc-$V
PKGNAME-c++ =	g++-$V
PKGNAME-estdc =	libstdc++-$V
PKGNAME-chill=	gchill-$V
PKGNAME-g77=	g77-$V
PKGNAME-java=	gcj-$V
PKGNAME-objc=	gobjc-$V
PKGNAME-ada=	gnat-$V

BUILD_DEPENDS=	::devel/autoconf

# This can be patched out, apart from java that wants a pure parser.
BUILD_DEPENDS+= :bison-*:devel/bison

CATEGORIES=	lang 
MAINTAINER=	Marc Espie <espie@openbsd.org>


PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

# user configuration section

# see files/tests for precise testing procedure


.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
MAKE_GXX=Yes
.endif

MULTI_PACKAGES=
# No sub packages description
DESCR=${PKGDIR}/DESCR

REGRESS_DEPENDS=::lang/egcs/dejagnu

# No way around it, java wants a pure parser
.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
BUILD_DEPENDS+=:bison-*:devel/bison
.endif

#### fetch section

V=3.2.1
DIRECTORY=releases/${DISTNAME}/
DISTNAME=   gcc-$V

# getting the right archives where they should be
MASTER_SITE_SUBDIR=${LATEST_DATE}

DIST_SUBDIR=egcs

DISTFILES=  gcc-$V.tar.bz2

SITES=	

SITES+= ftp://ftp.uvsq.fr/pub/gcc/${DIRECTORY}
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

# Only contains empty gcc-3.0 directory - maybe it gets updated at 
# some point?
SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/egcs/${DIRECTORY}

# Bad mirrors (no snapshot)
# ftp.lip6.fr, ftp.ilog.fr, ftp.irisa.fr
# No route to host
# mirrors.aarnet.edu.au
#SITES+=	ftp://ftp.lip6.fr/pub/egcs/${DIRECTORY}
#SITES+= ftp://ftp.ilog.fr/pub/Mirrors/egcs/${DIRECTORY}
#SITES+= ftp://ftp.irisa.fr/pub/mirrors/egcs.cygwin.com/gcc/${DIRECTORY}
MASTER_SITES=${SITES:S/%DATE%/${LATEST_DATE}/}

# add a possible next snapshot

#### 
# Patch section

ac_dirs=gcc libiberty libstdc++-v3 libf2c/libI77 libffi fastjar libjava
rm_dirs=zlib texinfo #boehm-gc

# get openbsd configuration files where they should be
post-patch:
#	cp -R ${FILESDIR}/config/* ${WRKSRC}
#	cp -R ${FILESDIR}/include/* ${WRKSRC}/gcc/ginclude
	cd ${WRKSRC} && contrib/gcc_update --touch
# rebuild configure files after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
	cd ${WRKSRC}/libstdc++-v3 && PATH=${PORTPATH} autoheader
.for ac_dir in ${ac_dirs}
	cd ${WRKSRC}/${ac_dir} && PATH=${PORTPATH} autoconf
.endfor
	cd ${WRKSRC} && rm -rf ${rm_dirs}




####
# configure section
#
# define AS_PATH/LD_PATH is you don't want to use the default as/ld.
# This should not be used for regular releases, but if you're using this
# snapshot, you know what you're doing, don't you ?

CONFIGURE_STYLE=	gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gcc

LANGS=c
.if defined(MAKE_GXX) && ${MAKE_GXX:L} == "yes"
LANGS:=${LANGS},c++
MULTI_PACKAGES+=-c++ -estdc
.endif
.if defined(MAKE_FORTRAN) && ${MAKE_FORTRAN:L} == "yes"
LANGS:=${LANGS},f77
MULTI_PACKAGES+=-g77
.endif
.if defined(MAKE_OBJC) && ${MAKE_OBJC:L} == "yes"
LANGS:=${LANGS},objc
MULTI_PACKAGES+=-objc
.endif
.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
LANGS:=${LANGS},java
MULTI_PACKAGES+=-java
.endif
.if defined(MAKE_ADA) && ${MAKE_ADA:L} == "yes"
LANGS:=${LANGS},ada
MULTI_PACKAGES+=-ada

CONFIGURE_ENV=ADAC=${LOCALBASE}/bin/egcc GNATBIND=${LOCALBASE}/bin/gnatbind
MAKE_ENV=ADAC=${LOCALBASE}/bin/egcc GNATBIND=${LOCALBASE}/bin/gnatbind
CC=${LOCALBASE}/bin/egcc
BUILD_DEPENDS+=:gnat-*:lang/egcs/stable,-ada
.endif
CONFIGURE_ENV+=am_cv_func_iconv=no

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS=-O2 -g


CONFIGURE_ARGS= --verbose --program-transform-name=s,^,e, \
--disable-nls  --with-system-zlib

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS+=--enable-cpp
CONFIGURE_ARGS+=--enable-languages=${LANGS}

.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
CONFIGURE_ARGS+=--enable-sjlj-exceptions

# For boehm-gc
#CONFIGURE_ENV+= LDFLAGS="${LDFLAGS} -L/usr/local/lib -lgc"
#CONFIGURE_ENV+= CPPFLAGS="${CPPFLAGS} -I/usr/local/include"
.endif


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



####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to MAINTAINER.
USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap
#ALL_TARGET=bootstrap3
# ALL_TARGET=bootstrap-lean
MAKE_FLAGS=libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

FAKE_FLAGS=DESTDIR=${WRKINST}

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
.if defined(MAKE_ADA) && ${MAKE_ADA:L} == "yes"
	cd ${WRKBUILD}/gcc && env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} gnatlib_and_tools
.endif


post-install:
	-ldconfig -U ${PREFIX}/lib ${PREFIX}/lib/fpic ${PREFIX}/lib/nof

# Tests still need to be performed at the end of install, I don't know why.

REGRESS_DEPENDS+=::lang/egcs/stable
.if defined(MAKE_GXX) && ${MAKE_GXX:L} == "yes"
REGRESS_DEPENDS+=::lang/egcs/stable,-c++,-estdc
.endif
.if defined(MAKE_FORTRAN) && ${MAKE_FORTRAN:L} == "yes"
REGRESS_DEPENDS+=::lang/egcs/stable,-g77
.endif
.if defined(MAKE_OBJC) && ${MAKE_OBJC:L} == "yes"
REGRESS_DEPENDS+=::lang/egcs/stable,-objc
.endif
.if defined(MAKE_JAVA) && ${MAKE_JAVA:L} == "yes"
REGRESS_DEPENDS+=::lang/egcs/stable,-java
.endif
.if defined(MAKE_ADA) && ${MAKE_ADA:L} == "yes"
REGRESS_DEPENDS+=::lang/egcs/stable,-ada
.endif

TEST_RESULT=${WRKBUILD}/test.result

do-regress:
	@cd ${WRKBUILD}; ulimit -c 0; \
	${MAKE_ENV} ${MAKE_PROGRAM} -k -f ${MAKE_FILE} check && \
	${WRKSRC}/contrib/test_summary >${TEST_RESULT}
	@echo "Please send the tests results to the gcc project"
	@echo "By invoking make send-results"

send-results: 
	[ -f ${TEST_RESULT} ] && sh ${TEST_RESULT}


.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "m68k" || ${MACHINE_ARCH} == "sparc"
SED_PLIST=|sed -e '/^IFPIC:/s///'
.else
SED_PLIST=|sed -e '/^IFPIC:/d'
.endif

.if ${MACHINE_ARCH} == "powerpc"
SED_PLIST+=|sed -e '/^IFPPC:/s///'
.else
SED_PLIST+=|sed -e '/^IFPPC:/d'
.endif

GCC_NAME=${WRKBUILD}/gcc/xgcc

.if defined(PACKAGING) && defined(SUBPACKAGE)
.  if !empty(SUBPACKAGE) && ${SUBPACKAGE} != "-estdc"
RUN_DEPENDS+=::lang/egcs/stable
.  endif
.  if ${SUBPACKAGE} == "-c++"
RUN_DEPENDS+=::lang/egcs/stable,-estdc
.  endif
.endif

CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS=CONFIG V
.include <bsd.port.mk>

