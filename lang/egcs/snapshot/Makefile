# OpenBSD makefile for:	egcs
# Version required:	snapshot 1998-11-09
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.3 1998/11/16 21:11:13 espie Exp $
#

# This is a configuration file for egcs, recent snapshot
# right now, we only configure i386, C and C++.

# user configuration
# see files/tests for precise testing procedure
MAKE_TESTS=yes
MAKE_GXX=yes
MAKE_FORTRAN=yes
MAKE_OBJC=yes


# these are broken, as of this snapshot...
#MAKE_CHILL=yes
#MAKE_JAVA=yes

#PATCH_DEBUG=yes
# this configuration allow for ONE level of diff-files

LATEST=19981109
DIRECTORY=egcs/snapshots/%SUBDIR%/
.if defined(NEXT)
DISTNAME=	egcs-${NEXT}
.else
DISTNAME=   egcs-${LATEST}
.endif
CATEGORIES=	lang 
MAINTAINER=	Marc.Espie@openbsd.org


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

MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} \
	ftp://ftp.lip6.fr/pub/${DIRECTORY}

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

# to do: check egcs-stable mirror list for sites which carry snapshots


BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

# will improve over time as more and more architectures are handled
ONLY_FOR_ARCHS = i386

GNU_CONFIGURE=	yes
USE_GMAKE= yes

# don't make bootstrap if you're impatient/you know what you're doing
# use bootstrap-lean if you don't have room.
ALL_TARGET=bootstrap

CONFIGURE_SCRIPT=../source/configure

CONFIGURE_ENV=CFLAGS=-O2
CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --with-gnu-ld --with-gnu-as \
--program-transform-name=s,^,e,

.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=--enable-shared
.endif


.if defined(NEXT)
post-extract:
	mv ${WRKDIR}/egcs-${LATEST} ${WRKSRC}
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
	-DVERSION=`sed -e 's/.*\(egcs-[0-9.]*\) .*/\1/' <${WRKDIR}/source/gcc/version.c` \
	<${FILESDIR}/PLIST.template >${PKGDIR}/PLIST

pre-clean:
	-rm ${PKGDIR}/PLIST

.include <bsd.port.mk>
