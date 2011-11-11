# $OpenBSD: Makefile.inc,v 1.12 2011/11/11 18:38:17 jasper Exp $

TARGET=			msp430

PKGNAME?=		${TARGET}-${DISTNAME}

CATEGORIES+=		devel devel/msp430

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# mspgcc4 was forked from mspgcc several years ago due to dormancy of the
# original project. Currently mspgcc is being developed again and unifying
# the different msp430 architectures (uniarch).
# For a list of changes this uniarch approach brings, please refer to:
# http://sourceforge.net/apps/mediawiki/mspgcc/index.php?title=Devel:Uniarch
HOMEPAGE?=		http://mspgcc.sourceforge.net/

# binutils/gcc/gdb: GPLv3
# libc/msp430mcu: BSD3/ISC
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

MASTER_SITES?=		${MASTER_SITE_SOURCEFORGE:=mspgcc/}

# The patches on http://distfiles.nl/mspgcc/ are taken from
# git://mspgcc.git.sourceforge.net/gitroot/mspgcc/
# or from the official release tarballs.
MASTER_SITES0=		http://distfiles.nl/mspgcc/

# These are the patches intended for the LTS releases.
MASTER_SITES1= ${MASTER_SITE_SOURCEFORGE:=mspgcc/Patches/LTS/20110716/}

.for p in ${LTS_PATCHES}
PATCHFILES += $p:1
.endfor

PATCH_DIST_STRIP?=	-p1

EXTRACT_SUFX?=		.tar.bz2

DIST_SUBDIR?=		msp430

CONFIGURE_STYLE?=	gnu

CONFIGURE_ARGS+=	--target=msp430		\
			--disable-nls		\
			--disable-shared

USE_LIBTOOL?=		Yes
USE_GROFF?=		Yes
USE_GMAKE?=		Yes

LIBTOOL_FLAGS?=		--tag=disable-shared
