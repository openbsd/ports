# ruby module

# Variables defined in this file that prefixed with _ are designed for
# internal use, not currently used in the ports tree outside this file,
# and are purposely not documented.

CATEGORIES+=		lang/ruby

# Whether the ruby module should automatically add FLAVORs.
# If left blank, does so only for gem ports.
.if ${CONFIGURE_STYLE:L:Mgem}
MODRUBY_HANDLE_FLAVORS ?= Yes
.else
MODRUBY_HANDLE_FLAVORS ?= No
.endif

# This allows you to build packages for multiple ruby versions and
# implementations using the same port directory for gem
# ports.  It does this by adding FLAVORS automatically, unless FLAVORS are
# already defined or the port defines MODRUBY_REV to tie the port to a specific
# ruby version.
.if !defined(MODRUBY_REV)
.  if ${MODRUBY_HANDLE_FLAVORS:L:Myes}

# If ruby.pork.mk should handle FLAVORs, define a separate FLAVOR
# for each ruby version.
.    if !defined(FLAVORS)
FLAVORS=	ruby31 ruby32 ruby33
.    endif

# Instead of adding flavors to the end of the package name, we use
# different package stems (rubyXY-*) for different ruby versions.
# In most cases, PKGNAME in the port should be set to the same as
# DISTNAME, and this will insert the correct package prefix.
FULLPKGNAME?=		${MODRUBY_PKG_PREFIX}-${PKGNAME}

# If the port installs binary files or man pages and can work on multiple
# versions of ruby, those files should have the appropriate suffix so that
# they do not conflict.  GEM_BIN_SUFFIX should be added after such a filename
# in the PLIST so that the gem will correctly package on all supported
# versions of ruby.
SUBST_VARS+=		GEM_BIN_SUFFIX GEM_MAN_SUFFIX

FLAVOR?=
# Without a FLAVOR, assume the use of ruby 3.3.
.    if empty(FLAVOR)
FLAVOR =		ruby33
.    endif

# Check for conflicting FLAVORs and set MODRUBY_REV appropriately based
# on the FLAVOR.
.    for i in ruby31 ruby32 ruby33
.      if ${FLAVOR:M$i}
MODRUBY_REV = ${i:C/ruby([0-9])/\1./}
.        if ${FLAVOR:N$i:Mruby31} || \
            ${FLAVOR:N$i:Mruby32} || \
            ${FLAVOR:N$i:Mruby33}
ERRORS += "Fatal: Conflicting flavors used: ${FLAVOR}"
.        endif
.      endif
.    endfor
.  endif
.endif

# The default ruby version to use for non-gem ports.  Defaults to ruby
# 3.3 for consistency with the default ruby33 FLAVOR for gem ports.
MODRUBY_REV?=		3.3

# Use the FLAVOR as the prefix for the package, to avoid conflicts.
MODRUBY_PKG_PREFIX =	${MODRUBY_FLAVOR}

GEM_BIN_SUFFIX =	${MODRUBY_BINREV}
GEM_MAN_SUFFIX =	${GEM_BIN_SUFFIX}
MODRUBY_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd
MODRUBY_BINREV =	${MODRUBY_LIBREV:S/.//}
MODRUBY_BIN_RSPEC =	${LOCALBASE}/bin/rspec${MODRUBY_BINREV}
MODRUBY_FLAVOR =	ruby${MODRUBY_BINREV}
MODRUBY_LIBREV =	${MODRUBY_REV}
MODRUBY_BUILD_DEPENDS=	${MODRUBY_RUN_DEPENDS}
MODRUBY_LIB_DEPENDS=	${MODRUBY_RUN_DEPENDS}
MODRUBY_RUN_DEPENDS=	lang/ruby/${MODRUBY_REV}
MODRUBY_SITEARCHDIR =	${MODRUBY_SITEDIR}/${MODRUBY_ARCH}
MODRUBY_SITEDIR =	lib/ruby/site_ruby/${MODRUBY_LIBREV}
MODRUBY_RELEXAMPLEDIR=	share/examples/${MODRUBY_PKG_PREFIX}
MODRUBY_WANTLIB=	ruby${MODRUBY_BINREV}
RAKE=			${LOCALBASE}/bin/rake${MODRUBY_BINREV}
RUBY=			${LOCALBASE}/bin/ruby${MODRUBY_BINREV}

_MODRUBY_RSPEC3_DEPENDS = devel/ruby-rspec/3/rspec,${MODRUBY_FLAVOR}>=3.0

.if defined(MODRUBY_TEST)
.  if !${MODRUBY_TEST:L:Mrspec3} && !${MODRUBY_TEST:L:Mtestrb} && \
     !${MODRUBY_TEST:L:Mrake} && !${MODRUBY_TEST:L:Mruby}
ERRORS += "Fatal: Unsupported MODRUBY_TEST value: ${MODRUBY_TEST}"
.  endif
.else
.  if ${CONFIGURE_STYLE:L:Mgem}
.    if !target(do-test)
# Disable regress for gem ports, since they won't use make check for test.
NO_TEST =	Yes
.    endif
.  endif
MODRUBY_TEST?=
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

.if ${MODRUBY_TEST:L:Mrspec3}
TEST_DEPENDS+=	${_MODRUBY_RSPEC3_DEPENDS}
.endif

MODRUBY_RUBY_ADJ =	perl -pi \
		-e '$$. == 1 && s|^.*env ruby.*$$|\#!${RUBY}|;' \
		-e '$$. == 1 && s|^.*bin/ruby.*$$|\#!${RUBY}|;' \
		-e 'close ARGV if eof;'
MODRUBY_ADJ_FILES?=
.if !empty(MODRUBY_ADJ_FILES)
MODRUBY_pre-configure +=for pat in ${MODRUBY_ADJ_FILES:QL}; do \
			 find ${WRKSRC} -type f -name "$$pat" \
			  -exec ${MODRUBY_RUBY_ADJ} {} + ; \
			done
.endif

MODRUBY_WANTLIB+=	c gmp m pthread

.if ${CONFIGURE_STYLE:L:Mext}
# Ruby C exensions are specific to an arch and are loaded as
# shared libraries (not compiled into ruby), so make sure PKG_ARCH=*
# is not set.
.  if defined(PKG_ARCH) && ${PKG_ARCH} == *
ERRORS+=	"Fatal: Should not have PKG_ARCH=* when compiling extensions"
.  endif

# Add appropriate libraries to WANTLIB depending on ruby version and
# implementation
WANTLIB+=	${MODRUBY_WANTLIB}
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
.endif

.if ${CONFIGURE_STYLE:L:Mgem}
# All gems should be in the same directory on rubygems.org.
SITES?=		${SITE_RUBYGEMS}
EXTRACT_SUFX=	.gem

.  if ${CONFIGURE_STYLE:L:Mext}
# Use ports-gcc for ruby32 extensions if base does not use clang
.    if ${FLAVOR:Mruby32} || ${FLAVOR:Mruby33}
COMPILER ?= 	base-clang ports-gcc
COMPILER_LANGS ?= c
.    endif
# Add build complete file to package so rubygems doesn't complain
# or build extensions at runtime
GEM_EXTENSIONS_DIR ?= ${GEM_LIB}/extensions/${MODRUBY_ARCH:S/i386/x86/}/${MODRUBY_REV}/${DISTNAME}
_GEM_EXTENSIONS_FILE ?= ${GEM_EXTENSIONS_DIR}/gem.build_complete
SUBST_VARS+=	GEM_EXTENSIONS_DIR
PKG_ARGS+=	-f ${PORTSDIR}/lang/ruby/rubygems-ext.PLIST
.  else
# Pure ruby gem ports without C extensions are arch-independent.
PKG_ARCH=	*
.  endif

GEM=		${LOCALBASE}/bin/gem${MODRUBY_BINREV}
GEM_BIN =	bin
GEM_LIB =	lib/ruby/gems/${MODRUBY_LIBREV}
GEM_BASE_LIB=	${_GEM_BASE}/ruby/${MODRUBY_LIBREV}
_GEM_BASE=	${WRKDIR}/gem-tmp/.gem
_GEM_ABS_PATH=	${PREFIX}/${GEM_LIB}
GEM_BASE_BIN=	${GEM_BASE_LIB}/bin

# We purposely do not install documentation for ruby gems, because
# the filenames are generated differently on different ruby versions,
# and most use 1 file per method, which is insane.
GEM_FLAGS+=	--local -N --no-force --verbose --backtrace --user-install
_GEM_CONTENT=	${WRKDIR}/gem-content
_GEM_DATAFILE=	${_GEM_CONTENT}/data.tar.gz
_GEM_PATCHED=	${DISTNAME}${EXTRACT_SUFX}
_GEM_MAKE=	"make V=1"

# Unpack the gem into WRKDIST so it can be patched.  Include the gem metadata
# under WRKDIST so it can be patched easily to remove or change dependencies.
# Remove any signing of packages, as patching the gem could then break the
# signatures.
EXTRACT_CASES += *.gem) \
    mkdir ${WRKDIST} ${_GEM_CONTENT}; \
    tar -xf ${FULLDISTDIR}/$$archive -C ${_GEM_CONTENT}; \
    tar -xzf ${_GEM_DATAFILE} -C ${WRKDIST} && rm -f ${_GEM_DATAFILE}; \
    gzcat ${_GEM_CONTENT}/metadata.gz > ${WRKDIST}/.metadata; \
    rm -f ${_GEM_CONTENT}/*.gz.sig ${_GEM_CONTENT}/checksums.yaml.gz;;

# Rebuild the gem manually after possible patching, then install it to a
# temporary directory (not the final directory under fake).
_MODRUBY_BUILD_TARGET = \
    if [ -f ${WRKDIST}/.metadata ]; then \
	    cd ${WRKDIST} && gzip .metadata && \
		    mv -f .metadata.gz ${_GEM_CONTENT}/metadata.gz; \
    fi; \
    cd ${WRKDIST} && pax -wz -s '/.*${PATCHORIG:S@.@\.@g}$$//' \
	    -x ustar -o write_opt=nodir . >${_GEM_DATAFILE}; \
    cd ${_GEM_CONTENT} && tar -cf ${WRKDIR}/${_GEM_PATCHED} *.gz; \
    mkdir -p ${_GEM_BASE}; \
    env -i ${MAKE_ENV} HOME=`dirname ${_GEM_BASE}` GEM_HOME=${_GEM_BASE} \
	    make=${_GEM_MAKE} \
	    ${GEM} install ${GEM_FLAGS} ${WRKDIR}/${_GEM_PATCHED} \
	    -- ${CONFIGURE_ARGS}

# Take the temporary gem directory, install the binary stub files to
# the appropriate directory, and move and fix ownership the gem library
# files.
_MODRUBY_INSTALL_TARGET = \
    if [ -d ${GEM_BASE_BIN} ]; then \
	    ${INSTALL_DATA_DIR} ${PREFIX}/${GEM_BIN}; \
	    for f in ${GEM_BASE_BIN}/*; do \
		    ${INSTALL_SCRIPT} $$f ${PREFIX}/${GEM_BIN}; \
	    done; \
	    rm -r ${GEM_BASE_BIN}; \
    fi; \
    ${INSTALL_DATA_DIR} ${_GEM_ABS_PATH}; \
    cd ${GEM_BASE_LIB} && mv * ${_GEM_ABS_PATH}; \
    if [ 'X' != "X${_GEM_EXTENSIONS_FILE}" ]; then \
	mkdir -p ${PREFIX}/${GEM_EXTENSIONS_DIR}; \
	touch ${PREFIX}/${_GEM_EXTENSIONS_FILE}; \
    fi
    chown -R ${SHAREOWN}:${SHAREGRP} ${_GEM_ABS_PATH}

.  if !target(do-build)
do-build: 
	${_MODRUBY_BUILD_TARGET}
.  endif
.  if !target(do-install)
do-install: 
	${_MODRUBY_INSTALL_TARGET}
.  endif
.endif

# PLIST magic.  Set variables so that the same PLIST will work for
# all ruby versions and implementations.
SUBST_VARS +=	MODRUBY_RELEXAMPLEDIR MODRUBY_SITEARCHDIR MODRUBY_SITEDIR \
		MODRUBY_LIBREV MODRUBY_ARCH GEM_LIB GEM_BIN DISTNAME
UPDATE_PLIST_ARGS +=	-s MODRUBY_RELEXAMPLEDIR -s MODRUBY_SITEARCHDIR \
			-s MODRUBY_SITEDIR -s GEM_LIB -s GEM_BIN

# test stuff

.if !empty(MODRUBY_TEST)
.  if !target(do-test)

.    if ${MODRUBY_TEST:L:Mrake}
_MODRUBY_TEST_BIN ?=	${RAKE}
.    elif ${MODRUBY_TEST:L:Mrspec3}
_MODRUBY_TEST_BIN ?=	${MODRUBY_BIN_RSPEC}
.    elif ${MODRUBY_TEST:L:Mtestrb}
_MODRUBY_TEST_BIN ?=	${RUBY} ${PORTSDIR}/lang/ruby/files/testrb.rb
.    elif ${MODRUBY_TEST:L:Mruby}
_MODRUBY_TEST_BIN ?=	${RUBY}
.    endif

.    if ${MODRUBY_TEST:L:Mrspec3}
MODRUBY_TEST_TARGET ?=	spec
.    else
MODRUBY_TEST_TARGET ?=	test
.    endif

MODRUBY_TEST_ENV ?= 
MODRUBY_TEST_ENV += RUBYLIB=.:"$$RUBYLIB"
do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} HOME=${WRKBUILD} \
		${MODRUBY_TEST_ENV} ${_MODRUBY_TEST_BIN} \
		${MODRUBY_TEST_TARGET}
.  endif
.endif
