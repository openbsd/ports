# OpenBSD makefile for:	egcs
# Version required:	egcs release 1.1b
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/09/26 08:53:03 espie Exp $
#

# This is a configuration file for egcs, stable release
# right now, we only configure i386, C and C++.

DISTNAME=	egcs-1.1b
DIRECTORY=egcs/releases/egcs-1.1b/

DISTFILES=	egcs-core-1.1b${EXTRACT_SUFX}
DISTFILES+=     egcs-g++-1.1b${EXTRACT_SUFX}
CATEGORIES=	lang 
MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
MASTER_SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}

MAINTAINER=	Marc.Espie@openbsd.org

# Should be CONFIGURE_DEPENDS, if we had it
DEPENDS=  ${PORTSDIR}/devel/autoconf:${PORTSDIR}/devel/autoconf

ONLY_FOR_ARCHS= i386

GNU_CONFIGURE=	yes
USE_GMAKE= yes
MAKE_ENV="CFLAGS=-O2"

# don't make bootstrap if you're impatient/you know what you're doing
# use bootstrap-lean if you don't have room.
ALL_TARGET=bootstrap

# should remove --enable-shared for alpha
# use --enable-haifa- on some archs (alpha, sparc, pa-risc)

CONFIGURE_ARGS=--verbose --enable-shared --program-prefix=e
INSTALL_TARGET=	install

# get openbsd configuration files where they should be
post-extract:
	cp -R files/* ${WRKSRC}
	rm -rf ${WRKSRC}/texinfo

# we should change libstdc++ name so that we will get the right one
post-patch:
	
CONFIGURE_SCRIPT=../source/configure

# rebuild configure file after patching, then move file around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# + kludge to build in a separate directory.
pre-configure:
	cd ${WRKSRC}/gcc && /usr/local/bin/autoconf
	mv ${WRKSRC} ${WRKDIR}/source
	mkdir ${WRKSRC}

.include <bsd.port.mk>
