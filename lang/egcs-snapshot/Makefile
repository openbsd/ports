# OpenBSD makefile for:	egcs
# Version required:	snapshot 1998-09-21
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.2 1998/10/02 18:57:28 espie Exp $
#

# This is a configuration file for egcs, recent snapshot
# right now, we only configure i386, C and C++.

LATEST=19980921
DIRECTORY=egcs/snapshots/1998-09-21/
DISTNAME=	egcs-${LATEST}

DISTFILES=	egcs-core-${LATEST}${EXTRACT_SUFX}
DISTFILES+=     egcs-g++-${LATEST}${EXTRACT_SUFX}
# see files/tests for testing procedure
DISTFILES+=egcs-tests-${LATEST}${EXTRACT_SUFX}

CATEGORIES=	lang 
MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} \
	ftp://ftp.lip6.fr/pub/${DIRECTORY}

MAINTAINER=	Marc.Espie@openbsd.org

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
--verbose \
--program-transform-name=s,^,e,

.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=--enable-shared
.endif

# get openbsd configuration files where they should be
post-patch:
	cp -R ${FILESDIR}/config/* ${WRKSRC}
	rm -rf ${WRKSRC}/texinfo ${WRKSRC}/gcc/ch

# rebuild configure file after patching, then move file around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# + kludge to build in a separate directory.
pre-configure:
	cd ${WRKSRC}/gcc && autoconf
	mv ${WRKSRC} ${WRKDIR}/source
	mkdir ${WRKSRC}

.include <bsd.port.mk>
