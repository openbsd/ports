# $OpenBSD: Makefile.inc,v 1.2 2011/04/21 16:29:35 jasper Exp $

TARGET=			msp430

CATEGORIES+=		devel devel/msp430

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE?=		http://mspgcc4.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

# The patches on http://distfiles.nl/mspgcc/ are taken from
# git://mspgcc4.git.sourceforge.net/gitroot/mspgcc4/mspgcc4

MASTER_SITES0=		http://distfiles.nl/mspgcc/
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
