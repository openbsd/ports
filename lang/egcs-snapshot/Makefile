# OpenBSD makefile for:	egcs
# Version required:	snapshot 1998-11-22
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.10 1998/12/17 23:04:10 espie Exp $
#
# This is a configuration file for egcs, recent snapshot
# PLEASE use the regular egcs-stable for serious work, resort to this one
# for experimentations and testing.
# Right now, we can only configure i386. Bound to change in the future

# we could remove this dependency by patching configure, but this is not
# reasonable...

# we HAVE to provide configure NOW, since the autoconf people have not 
# released autoconf 2.12.1, BUT egcs uses that ANYWAY. Fuck !!!
#BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf


CATEGORIES=	lang 
MAINTAINER=	Marc.Espie@openbsd.org
MIRROR_DISTFILE=no

# this will improve over time as more and more architectures are handled
# with some help from Jason L. Wright for sparc...
ONLY_FOR_ARCHS = i386 sparc m68k

# user configuration section

# see files/tests for precise testing procedure


# as of 19981213, cygnus snapshot packaging scheme is still BROKEN.
# YOU MUST USE THE MAMMOTH ARCHIVE !!!
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


LATEST_DATE=1998-12-13

#### fetch section
# configuration is built so that you can test the next snapshot easily,
# define NEXT_DATE to the next snapshot... you lose the ability to check
# md5 sums, though.

# You also may have to remove/add some patches, as these things ARE
# usually passed along to the egcs ml.
#NEXT_DATE=1998-12-13
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
.if defined(MAKE_TESTS)
DISTFILES+=egcs-g++-tests-${LATEST}${EXTRACT_SUFX}
.endif
.endif

.if defined(MAKE_FORTRAN)
DISTFILES+=     egcs-g77-${LATEST}${EXTRACT_SUFX}
.if defined(MAKE_TESTS)
DISTFILES+=egcs-g77-testsuite-${LATEST}${EXTRACT_SUFX}
.endif
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

# to do: check egcs-stable mirror list for sites which carry snapshots

MASTER_SITES=	\
	ftp://egcs.cygnus.com/pub/${DIRECTORY} \
	ftp://ftp.lip6.fr/pub/${DIRECTORY}

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

.endif

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
	for f in `cat ${FILESDIR}/fixdepend`;
	do \
		[ -f $$f ] && touch $$f; \
	done 




####
# configure section
#
# define AS_PATH/LD_PATH is you don't want to use the default as/ld.
# This should not be used for regular releases, but if you're using this
# snapshot, you know what you're doing, don't you ?

GNU_CONFIGURE=	yes

CONFIGURE_SCRIPT=../source/configure

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

CONFIGURE_ENV=CFLAGS=-O2 LANGUAGES='${LANGS}'
CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --program-transform-name=s,^,e, 


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

.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=--enable-shared
.endif


# rebuild configure file after patching, then move source around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# DON'T invoke autoconf unless you have autoconf >= 2.12.1
pre-configure:
#	cd ${WRKSRC}/gcc && autoconf
	-${MV} ${WRKSRC} ${WRKDIR}/source
	${MKDIR} ${WRKSRC}


####
# build section
# should work without gmake. If it turns out to be needed, this must be 
# reported to the egcs folks
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
	@(cd ${WRKSRC}; ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET} 2>warnings)



####
# Install section

PLIST=${WRKDIR}/PLIST

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
.if (${MACHINE_ARCH}) != "alpha")
M4FLAGS+= -DDYNAMIC
.endif

pre-install:
	${M4} ${M4FLAGS} -DARCH=`${WRKDIR}/source/config.guess` \
	-DVERSION=`${SED} -e 's/.*\(egcs-[0-9.]*\) .*/\1/' <${WRKDIR}/source/gcc/version.c` \
	<${FILESDIR}/PLIST.template >${PLIST}

.include <bsd.port.mk>
