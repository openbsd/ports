# OpenBSD makefile for:	egcs
# Version required:	snapshot 1998-11-09
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.4 1998/11/17 17:39:33 espie Exp $
#
# This is a configuration file for egcs, recent snapshot
# PLEASE use the regular egcs-stable for serious work, resort to this one
# for experimentations and testing.
# Right now, we can only configure i386. Bound to change in the future

# we could remove this dependency by patching configure, but this is not
# reasonable...
BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

CATEGORIES=	lang 
MAINTAINER=	Marc.Espie@openbsd.org

# this will improve over time as more and more architectures are handled
ONLY_FOR_ARCHS = i386

# user configuration section

# see files/tests for precise testing procedure

MAKE_TESTS=yes
MAKE_GXX=yes
MAKE_FORTRAN=yes


# these are broken, as of 1998-11-09
MAKE_CHILL=yes

# java archive is truncated, objc too
#MAKE_OBJC=yes
#MAKE_JAVA=yes


LATEST_DATE=1998-11-09

#### fetch section
# configuration is built so that you can test the next snapshot easily,
# define NEXT_DATE to the next snapshot... you lose the ability to check
# md5 sums, though.
# NEXT_DATE=1998-11-20
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
MASTER_SITE_SUBDIR=${LATEST}
PATCH_SITE_SUBDIR=${NEXT}

DIST_SUBDIR=egcs

PATCH_SITES = ${MASTER_SITES}
PATCH_DIST_STRIP=-p1

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

# to do: check egcs-stable mirror list for sites which carry snapshots

MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} \
	ftp://ftp.lip6.fr/pub/${DIRECTORY}


# add a possible next snapshot

.if defined(NEXT)
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

# synch the date
.if defined(NEXT)
post-extract:
	${MV} ${WRKDIR}/egcs-${LATEST} ${WRKSRC}
.endif


#### 
# Patch section
# this rigmarole is needed as all patches DON'T necessarily apply 
# to every configuration

pre-patch:
	-${RM} -f ${PATCHDIR}/*
	-${MKDIR} ${PATCHDIR}
	${CP} ${FILESDIR}/patches/patch-core-* ${PATCHDIR}
.if defined(MAKE_GXX)
	${CP} ${FILESDIR}/patches/patch-g++-* ${PATCHDIR}
.endif

# get openbsd configuration files where they should be
post-patch:
	${CP} -R ${FILESDIR}/config/* ${WRKSRC}
	-${RM} -rf ${WRKSRC}/texinfo 
.if !defined(MAKE_CHILL)
	-${RM} -rf ${WRKSRC}/gcc/ch
.endif



GNU_CONFIGURE=	yes

####
# configure section
#
# define AS_PATH/LD_PATH is you don't want to use the default as/ld.
# This should not be used for regular releases, but if you're on this
# snapshot, you know what you're doing, don't you ?
CONFIGURE_SCRIPT=../source/configure

CONFIGURE_ENV=CFLAGS=-O2
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

# rebuild configure file after patching, then move file around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# + kludge to build in a separate directory.
pre-configure:
#	cd ${WRKSRC}/gcc && autoconf
	-${MV} ${WRKSRC} ${WRKDIR}/source
	${MKDIR} ${WRKSRC}


####
# build section
# should work without gmake. If it turns out to be needed, this is a bug
#USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you don't have room.
ALL_TARGET=bootstrap
# ALL_TARGET=bootstrap-lean



####
# Install section

M4FLAGS=-Uinclude -DDISTNAME=${DISTNAME}
.if defined(MAKE_GXX)
M4FLAGS+= -DGXX
.endif
.if defined(MAKE_G77)
M4FLAGS+= -DG77
.endif
.if defined(MAKE_CHILL)
M4FLAGS+= -DCHILL
.endif
.if defined(OBJC)
M4FLAGS+= -DOBJC
.endif
.if (${MACHINE_ARCH}) != "alpha")
M4FLAGS+= -DDYNAMIC
.endif

pre-install:
	m4 ${M4FLAGS} -DARCH=`${WRKDIR}/source/config.guess` \
	-DVERSION=`${SED} -e 's/.*\(egcs-[0-9.]*\) .*/\1/' <${WRKDIR}/source/gcc/version.c` \
	<${FILESDIR}/PLIST.template >${PKGDIR}/PLIST

pre-clean:
	-${RM} ${PKGDIR}/PLIST ${PATCHDIR}/*

.include <bsd.port.mk>
