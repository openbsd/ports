# $OpenBSD: ruby.port.mk,v 1.4 2006/06/11 19:56:31 sturm Exp $

# ruby module

RUBY=			${LOCALBASE}/bin/ruby

BUILD_DEPENDS+=		::lang/ruby
RUN_DEPENDS+=		::lang/ruby

# location of ruby libraries
MODRUBY_LIBDIR=		${LOCALBASE}/lib/ruby

# common directories for ruby extensions
# used to create docs and examples install path
MODRUBY_DOCDIR=		${PREFIX}/share/doc/ruby
MODRUBY_EXAMPLEDIR=	${PREFIX}/share/examples/ruby

CONFIGURE_STYLE?=	simple
CONFIGURE_SCRIPT?=	${LOCALBASE}/bin/ruby extconf.rb

REV=1.8
SUB=${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS=SUB REV

.if ${CONFIGURE_STYLE:L:Mgem}
EXTRACT_SUFX=	.gem
EXTRACT_ONLY=

BUILD_DEPENDS+=	::devel/ruby-gems
NO_BUILD=	Yes

SUBST_VARS+=	DISTNAME

GEM=		${LOCALBASE}/bin/gem
GEM_BASE=	${PREFIX}/lib/ruby/gems/${REV}
GEM_FLAGS=	--local --rdoc --no-force

.  if !target(do-regress)
# XXX gem errors out w/o unit tests to run and I have not found any gem
# which actually supports tests
NO_REGRESS=	Yes

# a generic regress target might look sth like this
#do-regress:
#	@if [ ! -d ${WRKINST} ]; then \
#		_CLEAN_FAKE=Yes; \
#	fi; \
#	mkdir -p ${WRKINST}${GEM_BASE}; \
#	${SUDO} ${GEM} install ${GEM_FLAGS} --test \
#		--install-dir ${WRKINST}${GEM_BASE} \
#		${FULLDISTDIR}/${DISTFILES}; \
#	if [ ! -z "$$_CLEAN_FAKE" ]; then \
#		${SUDO} rm -fr ${WRKINST}; \
#	fi
.  endif
.  if !target(do-install)
do-install:
	@${INSTALL_DATA_DIR} ${GEM_BASE}
	@${SUDO} ${GEM} install ${GEM_FLAGS} --install-dir ${GEM_BASE} \
		${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
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
.  if !target(do-regress)
NO_REGRESS=Yes
.  endif
.  if !target(do-install)
do-install:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${DESTDIR}
.  endif
.endif
