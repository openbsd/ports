# $OpenBSD: Makefile.inc,v 1.5 2011/09/05 08:15:14 jasper Exp $

TARGET=			msp430

CATEGORIES+=		devel devel/msp430

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# mspgcc4 was forked from mspgcc several years ago due to dormancy of the
# original project. Currently mspgcc is being developed again and unifying
# the different msp430 architectures (uniarch).
# For a list of changes this uniarch approach brings, please refer to:
# http://sourceforge.net/apps/mediawiki/mspgcc/index.php?title=Devel:Uniarch
HOMEPAGE?=		http://mspgcc4.sourceforge.net/

# GPLv3
# msp430mcu: BSD3
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

MASTER_SITES?=		${MASTER_SITE_SOURCEFORGE:=mspgcc/}

# The patches on http://distfiles.nl/mspgcc/ are taken from
# git://mspgcc.git.sourceforge.net/gitroot/mspgcc/
# or from the official release tarballs.
MASTER_SITES0=		http://distfiles.nl/mspgcc/
PATCH_DIST_STRIP?=	-p1

EXTRACT_SUFX?=		.tar.bz2

DIST_SUBDIR?=		msp430

CONFIGURE_STYLE?=	gnu

CONFIGURE_ARGS+=	--target=msp430		\
			--disable-nls		\
			--disable-shared
# XXX: Breaks with -Wbounded 
CONFIGURE)ARGS+=	--disable-werror

USE_LIBTOOL?=		Yes
USE_GROFF?=		Yes
USE_GMAKE?=		Yes

LIBTOOL_FLAGS?=		--tag=disable-shared
