# $OpenBSD: ruby.port.mk,v 1.38 2010/11/19 17:54:37 jeremy Exp $

# ruby module

CATEGORIES+=		lang/ruby

# This allows you to build ruby 1.8, ruby 1.9, and jruby packages using
# the same port directory for gem and extconf based ports.  It does this
# by adding FLAVORS automatically, unless FLAVORS are already defined
# or the port defines MODRUBY_REV to tie the port to a specific ruby
# version.  For example, JDBC gem ports want to set MODRUBY_REV=jruby,
# since they don't work on ruby 1.8 or ruby 1.9.
.if !defined(MODRUBY_REV)
.  if ${CONFIGURE_STYLE:L:Mgem} || ${CONFIGURE_STYLE:L:Mextconf}
.    if !defined(FLAVORS)
FLAVORS?=		ruby18 ruby19 rbx
.      if !${CONFIGURE_STYLE:L:Mext} && !${CONFIGURE_STYLE:L:Mextconf}
FLAVORS+=		jruby
.      endif
.    endif

# Instead of adding flavors to the end of the package name, we use
# different package stems for ruby 1.8, ruby 1.9, and jruby packages.
# ruby 1.8 uses the historical ruby-* package stem, ruby 1.9 uses
# ruby19-* and jruby uses jruby-*.  In most cases, PKGNAME in the port
# should be set to the same as DISTNAME, and this will insert the
# correct package prefix.
FULLPKGNAME?=		${MODRUBY_PKG_PREFIX}-${PKGNAME}

# If the port can work on both ruby 1.9 and another version of ruby,
# and gem installs binaries for it, the binaries on ruby 1.9 are installed
# with a 19 suffix.  GEM_BIN_SUFFIX should be added after such a filename
# in the PLIST so that the gem will correctly package on all supported
# versions of ruby.
SUBST_VARS+=		GEM_BIN_SUFFIX

# The unset flavor is the same as the ruby18 FLAVOR, but the FLAVOR is
# not set by default, as otherwise it breaks pkg_add -u for previously
# installed ports.
FLAVOR?=
.     if empty(FLAVOR)
MODRUBY_REV=		1.8
# Check for conflicting FLAVORs and set MODRUBY_REV appropriately based
# on the FLAVOR.
.    elif ${FLAVOR:L:Mruby18}
.      if ${FLAVOR:L:Mruby19} || ${FLAVOR:L:Mjruby} || ${FLAVOR:L:Mrbx}
ERRORS+=		"Fatal: Conflicting flavors used: ${FLAVOR}"
.      endif
FLAVOR=			${FLAVOR:L:Nruby18}
MODRUBY_REV=		1.8
.    elif ${FLAVOR:L:Mruby19}
.      if ${FLAVOR:L:Mruby18} || ${FLAVOR:L:Mjruby} || ${FLAVOR:L:Mrbx}
ERRORS+=		"Fatal: Conflicting flavors used: ${FLAVOR}"
.      endif
MODRUBY_REV=		1.9
.    elif ${FLAVOR:L:Mjruby}
.      if ${FLAVOR:L:Mruby18} || ${FLAVOR:L:Mruby19} || ${FLAVOR:L:Mrbx}
ERRORS+=		"Fatal: Conflicting flavors used: ${FLAVOR}"
.      endif
MODRUBY_REV=		jruby
.    elif ${FLAVOR:L:Mrbx}
.      if ${FLAVOR:L:Mruby18} || ${FLAVOR:L:Mruby19} || ${FLAVOR:L:Mjruby}
ERRORS+=		"Fatal: Conflicting flavors used: ${FLAVOR}"
.      endif
MODRUBY_REV=		rbx
.    endif
.  endif
.endif

# Other non-gem and non-extconf based ruby ports should default to
# using ruby 1.8.  Ports that require a different ruby version such
# set MODRUBY_REV in their makefile with either 1.9 or jruby to
# build on ruby 1.9 or jruby respectively.
MODRUBY_REV?=		1.8
GEM_BIN_SUFFIX=	

.if ${MODRUBY_REV} == 1.8
MODRUBY_LIBREV=		1.8
MODRUBY_BINREV=		18
MODRUBY_PKGSPEC=	ruby->=1.8,<=1.9
MODRUBY_PKG_PREFIX=	ruby
MODRUBY_FLAVOR =	
.elif ${MODRUBY_REV} == 1.9
MODRUBY_LIBREV=		1.9.1
MODRUBY_BINREV=		19
MODRUBY_PKGSPEC=	ruby->=1.9,<=1.10
MODRUBY_PKG_PREFIX=	ruby19
MODRUBY_FLAVOR =	ruby19
GEM_BIN_SUFFIX=		19
.elif ${MODRUBY_REV} == jruby
MODRUBY_LIBREV=		1.8

# Set these during development of ruby.port.mk to make sure
# nothing is broken.  However, turn them off before committing,
# since they result in bad error messages when, for example, an
# invalid flavor is used.
#.poison MODRUBY_BINREV
#.poison MODRUBY_PKGSPEC
#.poison MODRUBY_WANTLIB

MODRUBY_PKG_PREFIX=	jruby
MODRUBY_FLAVOR =	jruby
.elif ${MODRUBY_REV} == rbx
MODRUBY_LIBREV =	1.8
#.poison MODRUBY_BINREV
#.poison MODRUBY_PKGSPEC
#.poison MODRUBY_WANTLIB
MODRUBY_PKG_PREFIX =	rbx
MODRUBY_FLAVOR =	rbx
MODRUBY_RBX_VERSION =	1.1
.endif

MODRUBY_RAKE_DEPENDS =	
MODRUBY_RSPEC_DEPENDS =	

# Set the path for the ruby interpreter and the rake and rspec
# commands used by MODRUBY_REGRESS and manually in some port
# targets.
.if ${MODRUBY_REV} == jruby
RUBY=			${LOCALBASE}/jruby/bin/jruby
RAKE=			${RUBY} -S rake
RSPEC=			${RUBY} -S spec

# Without this, JRuby often fails with a memory error.
MAKE_ENV+=		JAVA_MEM='-Xms256m -Xmx256m'
.elif ${MODRUBY_REV} == rbx
RUBY=			${LOCALBASE}/bin/rbx
RAKE=			${RUBY} -S rake
RSPEC=			${RUBY} -S spec
MODRUBY_RSPEC_DEPENDS =	devel/ruby-rspec,${MODRUBY_FLAVOR}
.else
RUBY=			${LOCALBASE}/bin/ruby${MODRUBY_BINREV}
RAKE=			${LOCALBASE}/bin/rake${MODRUBY_BINREV}
MODRUBY_RSPEC_DEPENDS =	devel/ruby-rspec,${MODRUBY_FLAVOR}
.  if ${MODRUBY_REV} == 1.8
MODRUBY_RAKE_DEPENDS =	devel/ruby-rake
RSPEC=			${LOCALBASE}/bin/spec
.  else
RSPEC=			${LOCALBASE}/bin/spec${MODRUBY_BINREV}
.  endif
.endif

MODRUBY_REGRESS?=

.if ${MODRUBY_REV} == jruby
MODRUBY_RUN_DEPENDS=	lang/jruby
.elif ${MODRUBY_REV} == rbx
MODRUBY_RUN_DEPENDS=	lang/rubinius
.else
MODRUBY_WANTLIB=	ruby${MODRUBY_BINREV}
MODRUBY_RUN_DEPENDS=	${MODRUBY_PKGSPEC}:lang/ruby/${MODRUBY_REV}
.endif

MODRUBY_LIB_DEPENDS=	${MODRUBY_RUN_DEPENDS}
MODRUBY_BUILD_DEPENDS=	${MODRUBY_RUN_DEPENDS}

.if ${MODRUBY_REV} == 1.8
MODRUBY_ICONV_DEPENDS=	ruby-iconv->=1.8,<=1.9:lang/ruby/${MODRUBY_REV},-iconv
.else
MODRUBY_ICONV_DEPENDS=	${MODRUBY_RUN_DEPENDS}
.endif

# location of ruby libraries
.if ${MODRUBY_REV} == jruby
MODRUBY_LIBDIR=		${LOCALBASE}/jruby/lib/ruby
.elif ${MODRUBY_REV} == rbx
MODRUBY_LIBDIR=		${LOCALBASE}/lib/rubinius/${MODRUBY_RBX_VERSION}
.else
MODRUBY_LIBDIR=		${LOCALBASE}/lib/ruby
.endif

# common directories for ruby extensions
# used to create docs and examples install path
MODRUBY_RELDOCDIR=	share/doc/${MODRUBY_PKG_PREFIX}
MODRUBY_RELEXAMPLEDIR=	share/examples/${MODRUBY_PKG_PREFIX}
MODRUBY_DOCDIR=		${PREFIX}/${MODRUBY_RELDOCDIR}
MODRUBY_EXAMPLEDIR=	${PREFIX}/${MODRUBY_RELEXAMPLEDIR}
SUBST_VARS +=		^MODRUBY_RELDOCDIR ^MODRUBY_RELEXAMPLEDIR

.if ${MODRUBY_REV} == jruby
MODRUBY_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-java
.else
MODRUBY_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
.endif

# Assume that we want to automatically add ruby to BUILD_DEPENDS
# and RUN_DEPENDS unless the port specifically requests not to.
MODRUBY_BUILDDEP?=	Yes
MODRUBY_RUNDEP?=	Yes

.if ${NO_BUILD:L} == no && ${MODRUBY_BUILDDEP:L} == yes
BUILD_DEPENDS+=		${MODRUBY_BUILD_DEPENDS}
.endif
.if ${MODRUBY_RUNDEP:L} == yes
RUN_DEPENDS+=		${MODRUBY_RUN_DEPENDS}
.endif

.if ${MODRUBY_REGRESS:L:Mrake}
REGRESS_DEPENDS+=	${MODRUBY_RAKE_DEPENDS}
.endif
.if ${MODRUBY_REGRESS:L:Mrspec}
REGRESS_DEPENDS+=	${MODRUBY_RSPEC_DEPENDS}
.endif

MODRUBY_RUBY_ADJ=	perl -pi -e 's,/usr/bin/env ruby,${RUBY},'
MODRUBY_ADJ_FILES?=
.if !empty(MODRUBY_ADJ_FILES)
MODRUBY_ADJ_REPLACE=	for pat in ${MODRUBY_ADJ_FILES:QL}; do \
			 find ${WRKSRC} -type f -name "$$pat" -print0 | \
			  xargs -0r ${MODRUBY_RUBY_ADJ} ; \
			done
.  if !target(pre-configure)
pre-configure:
	${MODRUBY_ADJ_REPLACE}
.  endif
.endif

MODRUBY_EXTRACT_COOKIE = ${WRKDIR}/.modruby_extract_done
MODRUBY_BUILD_COOKIE = ${WRKBUILD}/.modruby_build_done
MODRUBY_INSTALL_COOKIE = ${WRKINST}/.modruby_install_done

.if ${CONFIGURE_STYLE:L:Mext} || ${CONFIGURE_STYLE:L:Mextconf}
# Ruby C exensions are specific to an arch and are loaded as
# shared libraries (not compiled into ruby), so set SHARED_ONLY
# and make sure PKG_ARCH=* is not set.
.  if defined(PKG_ARCH) && ${PKG_ARCH} == *
ERRORS+=	"Fatal: Should not have PKG_ARCH=* when compiling extensions"
.  endif
SHARED_ONLY=	Yes
# All ruby C extensions are dependent on libc and ruby's library, and almost
# all are also dependment on libm, so include c, m, and ruby's library by
# default, but let the port maintainer opt out of libm by setting
# MODRUBY_WANTLIB_m=No.
WANTLIB+=	c ${MODRUBY_WANTLIB}
MODRUBY_WANTLIB_m?=	Yes
.  if ${MODRUBY_WANTLIB_m:L:Myes}
WANTLIB+=	m
.  endif
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
.endif

.if ${CONFIGURE_STYLE:L:Mextconf}
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${RUBY} extconf.rb
.elif ${CONFIGURE_STYLE:L:Mgem}
# All gems should be in the same directory on rubygems.org.
MASTER_SITES?=	${MASTER_SITE_RUBYGEMS}
EXTRACT_SUFX=	.gem
# Ruby 1.9 and JRuby ship with ruby-gems
.  if ${MODRUBY_REV} == 1.8
BUILD_DEPENDS+=	devel/ruby-gems>=1.3.7p0
RUN_DEPENDS+=	devel/ruby-gems>=1.3.7p0
.  endif

# Just like all ruby C extensions should set SHARED_ONLY,
# pure ruby gem ports without C extensions should definitely not
# set SHARED_ONLY, and they are arch-independent.
.  if !${CONFIGURE_STYLE:L:Mext}
.    if defined(SHARED_ONLY) && ${SHARED_ONLY:L:Myes}
ERRORS+=	"Fatal: Pure ruby gems without ext CONFIGURE_STYLE should not \
		have SHARED_ONLY=Yes"
.    endif
PKG_ARCH=	*
.  endif

# PLIST magic.  Set variables so that the same PLIST will work for
# both ruby 1.8, ruby 1.9, and jruby.  
SUBST_VARS+=	^GEM_LIB ^GEM_BIN DISTNAME

.  if ${MODRUBY_REV} == jruby
GEM=		${RUBY} -S gem
# GEM_REL includes a slash so it can be used transparently when building
# a package for JRuby by holding everything in /usr/local/jruby.  It's
# empty for ruby 1.8 and ruby 1.9, which install into /usr/local.
GEM_REL=	jruby/
GEM_BASE_LIB=	${GEM_BASE}/jruby/${MODRUBY_LIBREV}
.  elif ${MODRUBY_REV} == rbx
GEM=		${RUBY} -S gem
GEM_REL=	
GEM_BASE_LIB=	${GEM_BASE}/rbx/${MODRUBY_LIBREV}
GEM_BIN =	lib/rubinius/${MODRUBY_RBX_VERSION}/gems/bin
GEM_LIB =	lib/rubinius/${MODRUBY_RBX_VERSION}/gems/${MODRUBY_LIBREV}
.  else
GEM=		${LOCALBASE}/bin/gem${MODRUBY_BINREV}
GEM_REL=	
GEM_BASE_LIB=	${GEM_BASE}/ruby/${MODRUBY_LIBREV}
.  endif
GEM_BASE=	${WRKDIR}/gem-tmp/.gem
GEM_BIN ?=	${GEM_REL}bin
GEM_LIB ?=	${GEM_REL}lib/ruby/gems/${MODRUBY_LIBREV}
GEM_ABS_PATH=	${PREFIX}/${GEM_LIB}
GEM_BASE_BIN=	${GEM_BASE_LIB}/bin
# We purposely do not install documentation for ruby gems, because
# the filenames are generated differently on different ruby versions,
# and most use 1 file per method, which is insane.
GEM_FLAGS=	--local --no-rdoc --no-ri --no-force --verbose --backtrace \
		--user-install
_GEM_CONTENT=	${WRKDIR}/gem-content
_GEM_DATAFILE=	${_GEM_CONTENT}/data.tar.gz
_GEM_PATCHED=	${DISTNAME}${EXTRACT_SUFX}

.  if ${CONFIGURE_STYLE:L:Mformat-executable}
GEM_FLAGS+=	--format-executable
.  endif

# Unpack the gem into WRKDIST so it can be patched.  Include the gem metadata
# under WRKDIST so it can be patched easily to remove or change dependencies.
# Remove any signing of packages, as patching the gem could then break the
# signatures.
${MODRUBY_EXTRACT_COOKIE}:
	mkdir -p ${WRKDIST} ${_GEM_CONTENT}
	cd ${_GEM_CONTENT} && tar -xf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	cd ${WRKDIST} && tar -xzf ${_GEM_DATAFILE} && rm ${_GEM_DATAFILE}
	cd ${_GEM_CONTENT} && gunzip metadata.gz && \
		mv metadata ${WRKDIST}/.metadata
	rm -f ${_GEM_CONTENT}/*.gz.sig

# Rebuild the gem manually after possible patching, then install it to a
# temporary directory (not the final directory under fake, since that would
# require root access and building C extensions as root).
${MODRUBY_BUILD_COOKIE}:
	cd ${WRKDIST} && gzip .metadata && \
		mv .metadata.gz ${_GEM_CONTENT}/metadata.gz
	cd ${WRKDIST} && find . -type f \! -name '*.orig'  -print | \
		pax -wz -s '/^\.\///' -f ${_GEM_DATAFILE}
	cd ${_GEM_CONTENT} && tar -cf ${WRKDIR}/${_GEM_PATCHED} *.gz
	mkdir -p ${GEM_BASE}
	env -i ${MAKE_ENV} HOME=${GEM_BASE}/.. GEM_HOME=${GEM_BASE} \
		${GEM} install ${GEM_FLAGS} ${WRKDIR}/${_GEM_PATCHED}

# Take the temporary gem directory, install the binary stub files to
# the appropriate directory, and move and fix ownership the gem library
# files.
${MODRUBY_INSTALL_COOKIE}:
	if [ -d ${GEM_BASE_BIN} ]; then \
		${INSTALL_DATA_DIR} ${PREFIX}/${GEM_BIN}; \
		for f in ${GEM_BASE_BIN}/*; do \
			${INSTALL_SCRIPT} $$f ${PREFIX}/${GEM_BIN}; \
		done; \
		rm -r ${GEM_BASE_BIN}; \
	fi
	${INSTALL_DATA_DIR} ${GEM_ABS_PATH}
	cd ${GEM_BASE_LIB} && mv * ${GEM_ABS_PATH}
	chown -R ${SHAREOWN}:${SHAREGRP} ${GEM_ABS_PATH}

.  if !target(do-extract)
do-extract: ${MODRUBY_EXTRACT_COOKIE}
.  endif
.  if !target(do-build)
do-build: ${MODRUBY_BUILD_COOKIE}
.  endif
.  if !target(do-install)
do-install: ${MODRUBY_INSTALL_COOKIE}
.  endif

.elif ${CONFIGURE_STYLE:L:Msetup}
MODRUBY_configure= \
	cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} ${RUBY} setup.rb config \
		--prefix=${PREFIX} ${CONFIGURE_ARGS};

${MODRUBY_BUILD_COOKIE}:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb setup

${MODRUBY_INSTALL_COOKIE}:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${DESTDIR}

.  if !target(do-build)
do-build: ${MODRUBY_BUILD_COOKIE}
.  endif
.  if !target(do-install)
do-install: ${MODRUBY_INSTALL_COOKIE}
.  endif
.endif

# These are mostly used by the non-gem ports.
SUBST_VARS+=		MODRUBY_LIBREV MODRUBY_ARCH

# regression stuff

.if !target(do-regress)
.  if ${MODRUBY_REGRESS:L:Mrspec}
.    if ${MODRUBY_REGRESS:L:Mrake}
RAKE_REGRESS_TARGET?=	${RSPEC_REGRESS_TARGET}
.    else
RSPEC_REGRESS_TARGET?=	spec
do-regress:
	cd ${WRKSRC} && ${RSPEC} ${RSPEC_REGRESS_TARGET}
.    endif
.  endif
.  if ${MODRUBY_REGRESS:L:Mrake}
RAKE_REGRESS_TARGET?=	test
do-regress:
	cd ${WRKSRC} && ${RAKE} ${RAKE_REGRESS_TARGET}
.  endif
.  if !${MODRUBY_REGRESS:L:Mrspec} && !${MODRUBY_REGRESS:L:Mrake}
NO_REGRESS=YES
.  endif
.endif
