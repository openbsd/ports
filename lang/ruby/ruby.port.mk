# $OpenBSD: ruby.port.mk,v 1.27 2010/09/28 20:12:16 jeremy Exp $

# ruby module

CATEGORIES+=		lang/ruby

MODRUBY_REV=		1.8
MODRUBY_LIBREV=		1.8
MODRUBY_BINREV=		18

RUBY=			${LOCALBASE}/bin/ruby${MODRUBY_BINREV}
RAKE=			${LOCALBASE}/bin/rake${MODRUBY_BINREV}
RSPEC=			${LOCALBASE}/bin/spec

MODRUBY_REGRESS?=

MODRUBY_LIB_DEPENDS=	ruby${MODRUBY_BINREV}:ruby->=1.8,<=1.9:lang/ruby/${MODRUBY_REV}
MODRUBY_RUN_DEPENDS=	:ruby->=1.8,<=1.9:lang/ruby/${MODRUBY_REV}
MODRUBY_BUILD_DEPENDS=	${MODRUBY_RUN_DEPENDS}

MODRUBY_ICONV_DEPENDS=	:ruby-iconv->=1.8,<=1.9:lang/ruby/${MODRUBY_REV},-iconv

# location of ruby libraries
MODRUBY_LIBDIR=		${LOCALBASE}/lib/ruby

# common directories for ruby extensions
# used to create docs and examples install path
MODRUBY_DOCDIR=		${PREFIX}/share/doc/ruby
MODRUBY_EXAMPLEDIR=	${PREFIX}/share/examples/ruby
MODRUBY_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}

BUILD_DEPENDS+=		${MODRUBY_BUILD_DEPENDS}
RUN_DEPENDS+=		${MODRUBY_RUN_DEPENDS}

.if ${MODRUBY_REGRESS:L:Mrake}
REGRESS_DEPENDS+=	::devel/ruby-rake
.endif

.if ${MODRUBY_REGRESS:L:Mrspec}
REGRESS_DEPENDS+=	::devel/ruby-rspec
.endif

SUBST_VARS+=		MODRUBY_BIN_REV MODRUBY_REV MODRUBY_ARCH

.if ${CONFIGURE_STYLE:L:Mextconf}
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${RUBY} extconf.rb
.elif ${CONFIGURE_STYLE:L:Mgem}
MASTER_SITES?=	${MASTER_SITE_RUBYGEMS}
EXTRACT_SUFX=	.gem

BUILD_DEPENDS+=	:ruby-gems->=1.3.0:devel/ruby-gems
RUN_DEPENDS+=	::devel/ruby-gems
NO_BUILD=	Yes

SUBST_VARS+=	DISTNAME

GEM=		${LOCALBASE}/bin/gem${MODRUBY_BINREV}
GEM_BASE=	${PREFIX}/lib/ruby/gems/${MODRUBY_LIBREV}
GEM_FLAGS=	--local --rdoc --no-force --verbose --default-source-index
_GEM_CONTENT=	${WRKDIR}/gem-content
_GEM_DATAFILE=	${_GEM_CONTENT}/data.tar.gz
_GEM_PATCHED=	${DISTNAME}${EXTRACT_SUFX}

.if ${CONFIGURE_STYLE:L:Mformat-executable}
GEM_FLAGS+=	--format-executable
.endif

# Ignore specified gem dependencies.
GEM_SKIPDEPENDS?=
.  if !empty(GEM_SKIPDEPENDS)
GEM_FLAGS+=	--skip-dependencies "${GEM_SKIPDEPENDS}"
.  endif

.  if !target(do-extract)
do-extract:
	@mkdir -p ${_GEM_CONTENT} ${WRKDIST}
	@cd ${_GEM_CONTENT} && tar -xf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@cd ${WRKDIST} && tar -xzf ${_GEM_DATAFILE} && rm ${_GEM_DATAFILE}
.  endif
.  if !target(pre-fake)
pre-fake:
	@${ECHO_MSG} "===>  Writing patched gem for ${FULLPKGNAME}${_MASTER}"
# "special" handling for ruby tar, included in ruby-gems
	@cd ${WRKDIST} && find . -type f \! -name '*.orig' -print | \
		pax -wz -s '/^\.\///' -f ${_GEM_DATAFILE}
	@cd ${_GEM_CONTENT} && tar -cf ${WRKDIR}/${_GEM_PATCHED} *.gz
.  endif
.  if !target(do-install)
do-install:
	@${INSTALL_DATA_DIR} ${GEM_BASE}
	@${SUDO} ${GEM} install ${GEM_FLAGS} --install-dir ${GEM_BASE} \
		${WRKDIR}/${_GEM_PATCHED}
	@if [ -d ${GEM_BASE}/bin ]; then \
		for f in ${GEM_BASE}/bin/*; do \
			mv $$f ${PREFIX}/bin; \
		done; \
		rm -r ${GEM_BASE}/bin; \
	fi
.  endif
.elif ${CONFIGURE_STYLE:L:Msetup}
MODRUBY_configure= \
	cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} ${RUBY} setup.rb config \
		--prefix=${PREFIX} ${CONFIGURE_ARGS};
.  if !target(do-build)
do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb setup
.  endif
.  if !target(do-install)
do-install:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${DESTDIR}
.  endif
.endif

# regression stuff

.if !target(do-regress)
.  if ${MODRUBY_REGRESS:L:Mrspec}
.    if ${MODRUBY_REGRESS:L:Mrake}
RAKE_REGRESS_TARGET?=	${RSPEC_REGRESS_TARGET}
.    else
RSPEC_REGRESS_TARGET?=	spec
do-regress:
	@cd ${WRKSRC} && ${RSPEC} ${RSPEC_REGRESS_TARGET}
.    endif
.  endif
.  if ${MODRUBY_REGRESS:L:Mrake}
RAKE_REGRESS_TARGET?=	test
do-regress:
	@cd ${WRKSRC} && ${RAKE} ${RAKE_REGRESS_TARGET}
.  endif
.  if !${MODRUBY_REGRESS:L:Mrspec} && !${MODRUBY_REGRESS:L:Mrake}
NO_REGRESS=YES
.  endif
.endif

