# $OpenBSD: ruby.port.mk,v 1.3 2006/06/11 18:57:11 sturm Exp $

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

.if ${CONFIGURE_STYLE:L:Msetup}
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
