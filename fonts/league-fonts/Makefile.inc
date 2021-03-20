# $OpenBSD: Makefile.inc,v 1.1 2021/03/20 12:44:25 bentley Exp $

PKGNAME ?=	${LEAGUE_FONT}-$V

CATEGORIES ?=	fonts

HOMEPAGE ?=	https://www.theleagueofmoveabletype.com/${LEAGUE_FONT}

MAINTAINER ?=		???

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		https://github.com/theleagueof/${LEAGUE_FONT}/releases/download/$V/

EXTRACT_SUFX ?=		.tar.xz

# Fix dos line-endings in files needing patches
#FIX_CRLF_FILES =	???

# Optional subdirectory of DISTDIR where distfiles and patches will be placed
#DIST_SUBDIR =		???

# PATCHFILES are also retrieved from MASTER_SITES*
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0

# Standard for C++ ports:
#COMPILER =		base-clang ports-gcc base-gcc
# Standard for C++11 or newer:
#COMPILER =		base-clang ports-gcc
# Ports that require a non-default compiler that do *not* use C++ should set this:
#COMPILER_LANGS =	c

# Any modules we may be using
#MODULES =		???

#
# MODPY_ settings for when using lang/python module
#
# Get source from pypi.org
#MODPY_PI =		Yes
#MODPY_SETUPTOOLS =	Yes
# If port is python2 only
#MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
# If port is a Python module (py-*) that is or might be used by other Python
# ports, set FLAVOR=python3 and FLAVORS=python3

#
# MODGO_ settings for when using lang/go module
#
# Get source from proxy.golang.org
#MODGO_MODULES =	modulename version
# These are needed for dependency resolution. We don't actually need the
# coresponding code
#MODGO_MODFILES =	modulename version

# Dependencies
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

# build/configuration variables
#
#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
# Programs that require GNU libtool to build instead of the OpenBSD one
# should use this option. Add a comment explaining why. Don't use this if
# a port requires libtool's .m4 files but otherwise can use OpenBSD libtool,
# in that case use "BUILD_DEPENDS=devel/libtool" instead.
#USE_LIBTOOL=		gnu
# Set CONFIGURE_STYLE to value corresponding to some standard configuration
#	  perl [modbuild]: perl's MakeMaker Makefile.PL (modbuild: perl's
#	  Module::Build Build.PL)
#	  gnu [autoconf] [old] [dest]: gnu style configure (old: no
#	  sysconfdir), (dest: add DESTDIR, does not handle it),
#	  autoconf: run autoconf to regenerate configure script. implies gnu.
#	            (see also "do-gen" target below).
#	XXX: cygnus products do NOT use autoconf for making the main
#		configure from configure.in
#	  imake [noman]: port uses imake for configuration.
#	  (noman: no man page installation)
#	  simple: port has its own configure script
#	  none: override default CONFIGURE_STYLE coming from a module
#	        (needed for some ports using lang/python, etc.)
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS =	???
#CONFIGURE_ENV =	???

# if debug packages are a good idea, extra configure args may be necessary
# and DEBUG_PACKAGES will commonly be set to ${BUILD_PACKAGES}
# DEBUG_CONFIGURE_ARGS =	???
# DEBUG_PACKAGES = ${BUILD_PACKAGES}

# for gnu stuff
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
# config.guess and others are copied here
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC})

# Is the build automagic or is it interactive
#
#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

# Assume you have one multiple choice flavor: 1 2 3 and switches a b.
# You would write
#
#FLAVORS =	1 2 3 a b
#FLAVOR ?=
# grab multiple choice value
#CHOICE = ${FLAVOR:Na:Nb}
# check that CHOICE is 1 OR 2 OR 3, or error out
#.if ${CHOICE} == "1"
# code for 1
#.elif ${CHOICE} == "2"
# code for 2
#.elif ${CHOICE} == "3"
# code for 3
#.else
#ERRORS += "Fatal: Conflicting flavor: ${FLAVOR}"
#.endif
# check for switches
#.if ${FLAVOR:Ma}
# code for a
#.endif
#.if ${FLAVOR:Mb}
# code for b
#.endif

NO_BUILD ?=		Yes
NO_TEST ?=		Yes

PKG_ARCH ?=		*

FONTDIR ?=		${PREFIX}/share/fonts/league-fonts
