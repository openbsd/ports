# XXX: Don't forget to adjust meta/msp430 when updating to new LTS
#

PORTROACH=		ignore:1

TARGET=			msp430

DISTNAME?=		${TOOL}-${TOOL_V}

COMMENT?=		${TOOL} for ${TARGET}

.if defined(GNU_TOOL) && ${GNU_TOOL:L:Myes}
PKGNAME?=		${TARGET}-${DISTNAME}

# Patches distributed by mspgcc to modify the GNU sources.
PATCHFILES.tweak?=	${TARGET}-${TOOL}-${TOOL_V}-${LTS_V}.patch
.endif

LTS_V?=			20120406

CATEGORIES+=		devel

# mspgcc4 was forked from mspgcc several years ago due to dormancy of the
# original project. Currently mspgcc is being developed again and unifying
# the different msp430 architectures (uniarch).
# For a list of changes this uniarch approach brings, please refer to:
# http://sourceforge.net/apps/mediawiki/mspgcc/index.php?title=Devel:Uniarch
HOMEPAGE?=		http://mspgcc.sourceforge.net/

# binutils/gcc/gdb: GPLv3
# libc/msp430mcu: BSD3/ISC
PERMIT_PACKAGE?=   Yes

SITES?=			${SITE_SOURCEFORGE:=mspgcc/}

# The patches on http://distfiles.sigtrap.nl/mspgcc/ are taken from
# git://mspgcc.git.sourceforge.net/gitroot/mspgcc/
# or from the official release tarballs.
SITES.tweak=	http://distfiles.sigtrap.nl/mspgcc/

# These are the patches intended for the LTS releases.
SITES.lts= 	${SITE_SOURCEFORGE:=mspgcc/Patches/LTS/${LTS_V}/}

PATCHFILES.lts = ${LTS_PATCHES}

PATCH_DIST_STRIP?=	-p1

EXTRACT_SUFX?=		.tar.bz2

DIST_SUBDIR?=		${TARGET}

# XXX at least gmkdir gets picked up if present
BUILD_DEPENDS +=	sysutils/coreutils

CONFIGURE_STYLE?=	gnu
CONFIGURE_ARGS+=	--target=msp430		\
			--disable-nls		\
			--disable-shared

USE_GMAKE?=		Yes

LIBTOOL_FLAGS?=		--tag=disable-shared

SEPARATE_BUILD?= 	Yes

NO_TEST?=		Yes
