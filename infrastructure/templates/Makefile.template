# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $
#
# Replace ??? with appropriate values
# Remove extraneous comments before commit
# Use /usr/ports/infrastructure/bin/portcheck

# Reasons why the port/package shouldn't be built
#
#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#COMES_WITH =		???
#BROKEN =		reason

#
# Very short description of the package (<=60 chars, usually starts lower-case)
#		|----------------------------------------------------------|
COMMENT =	???
# COMMENT-foo =	???	for multi packages

#
# What port/package will be created
#
DISTNAME =	???
#PKGNAME =	???
#PKGNAME-foo =	???	for multi packages

#
# github:
# /releases/ -> preferred. ignore GH_*, just use MASTER_SITES and DISTNAME.
# /archive/ ->  GH_ACCOUNT and GH_PROJECT, plus either GH_TAGNAME or GH_COMMIT.
#
# set DISTNAME if using GH_COMMIT, or if using GH_TAGNAME and the tag is not in
# the format "v1.00" or "1.00".
#
#GH_ACCOUNT =	username
#GH_PROJECT =	project
#GH_TAGNAME =	1.0
#GH_COMMIT =	abab123456789abacafeabab123123b1e4ble4bl

# for any port that creates shared libraries.
# both libtool and cmake automatically set filenames based on this variable.
# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =	???

# the category used in the directory name, /usr/ports/<category>/portname,
# must be included and listed first.
CATEGORIES =	???

#HOMEPAGE =	???	URL

# person who is responsible for the port. Use a complete email address with
# a real name, e.g., "MAINTAINER = John Doe <doe57@machine.somewhere.org>".
# If you maintain several ports, use the same line each time.
# If you no longer use the port, or are unwilling/unable to handle issues
# in a timely manner, *leave the field blank*.
# Default value is ports@openbsd.org, no need to fill in
#MAINTAINER =		???

# Licensing:  This determines what we can distribute.
# When you determine the license type, make sure to look at ALL distfiles.
# Every distfile can have a different license.  The PERMIT_* values are
# determined by the most restrictive license.  If you have two licenses
# that are in conflict, set PERMIT_* based on the most restrictive one.
# Make SURE you get these values right.

# Put a comment there to state what's going on.
# Can be as brief as `BSD' or `GPLv2+', but it'd better be easy to check,
# if someone wants to double-check licensing.
# For GPL, the applicable versions must be included (e.g. v2+, v2 only, v3+).
# If all PERMIT_* are Yes, just setting 'PERMIT_PACKAGE_CDROM=Yes' is enough.
#PERMIT_PACKAGE_CDROM =	Yes | Reason if No
#PERMIT_PACKAGE_FTP =	Yes | Reason if No
#PERMIT_DISTFILES_FTP =	Yes | Reason if No

# If pledge is used, annotate with `uses pledge()' in a comment

# "make port-lib-depends-check" can help
#WANTLIB =		???

# where the source files and patches can be fetched
#
MASTER_SITES =		???
#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=subdir/}
#MASTER_SITES =		${MASTER_SITE_foo:=subdir/}

# if more master sites are needed...
#MASTER_SITES0 =
# ...
#DISTFILES =		???
#EXTRACT_ONLY =		???
#EXTRACT_SUFX =		.tar.bz2

#DIST_SUBDIR =		???

# PATCHFILES are also retrieved from MASTER_SITES*
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0

# Dependencies
#
#COMPILER =		???
#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

# For ports using C++, except in special cases you should use a compiler
# with the same standard library as used in other ports. Remove entries
# from the COMPILER list if they're known to not work.
#COMPILER =		base-clang ports-gcc base-gcc

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

# Things that we don't want to do for this port/package
# Generally, DON'T set anything to No if it's not needed.
# The time gained is not worth it.
#
#NO_BUILD =		Yes
#NO_TEST =		Yes

# Overrides for default values
#
#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

# For ports that use a script or autoreconf to generate autoconf/automake
# files (where "CONFIGURE_STYLE=autoconf" isn't enough), use some/all of these
# dependencies, and add a do-gen target:
# 
#BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
#			${MODGNU_AUTOMAKE_DEPENDS} \
#			devel/libtool
#
#do-gen:
#	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh

.include <bsd.port.mk>
