#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: perl.port.mk,v 1.29 2016/04/26 10:56:59 sthen Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

TEST_TARGET ?=	test
MODPERL_BUILD ?= Build

# set /usr/bin/perl for executable scripts
MODPERL_BIN_ADJ =	perl -pi \
	-e '$$. == 1 && s|^.*env perl([0-9.]*)([\s].*)?$$|\#!/usr/bin/perl$$2|;' \
	-e '$$. == 1 && s|^.*bin/perl([0-9.]*)([\s].*)?$$|\#!/usr/bin/perl$$2|;' \
	-e 'close ARGV if eof;'

MODPERL_ADJ_FILES ?=
.if !empty(MODPERL_ADJ_FILES)
MODPERL_pre-configure = for f in ${MODPERL_ADJ_FILES}; do \
	${MODPERL_BIN_ADJ} ${WRKSRC}/$${f}; done
.endif

.if ${CONFIGURE_STYLE:L:Mmodbuild}
.  if ${CONFIGURE_STYLE:L:Mtiny}
MODPERL_configure = \
	arch=`perl -e 'use Config; print $$Config{archname}, "\n";'`; \
    cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} \
	perl Build.PL \
		--install_path=lib="${PREFIX}/libdata/perl5/site_perl" \
		--install_path=arch="${PREFIX}/libdata/perl5/site_perl/$$arch" \
		--install_path=libdoc="${PREFIX}/man/man3p" \
		--install_path=bindoc="${PREFIX}/man/man1" \
		--install_path=bin="${PREFIX}/bin" \
		--install_path=script="${PREFIX}/bin" ${CONFIGURE_ARGS}
.  else
MODPERL_configure = \
	arch=`perl -e 'use Config; print $$Config{archname}, "\n";'`; \
    cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} \
	perl Build.PL \
		install_path=lib="${PREFIX}/libdata/perl5/site_perl" \
		install_path=arch="${PREFIX}/libdata/perl5/site_perl/$$arch" \
		install_path=libdoc="${PREFIX}/man/man3p" \
		install_path=bindoc="${PREFIX}/man/man1" \
		install_path=bin="${PREFIX}/bin" \
		install_path=script="${PREFIX}/bin" ${CONFIGURE_ARGS}
.   endif
.else
MODPERL_configure = ${_MODPERL_preconfig}; \
	arch=`perl -e 'use Config; print $$Config{archname}, "\n";'`; \
     cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} \
	 PERL_MM_USE_DEFAULT=Yes \
     perl Makefile.PL \
     	PREFIX='${PREFIX}' \
		INSTALLSITELIB='${PREFIX}/libdata/perl5/site_perl' \
		INSTALLSITEARCH="\$${INSTALLSITELIB}/$$arch" \
		INSTALLPRIVLIB='/usr/./libdata/perl5' \
		INSTALLARCHLIB="\$${INSTALLPRIVLIB}/$$arch" \
		INSTALLMAN1DIR='${PREFIX}/man/man1' \
		INSTALLMAN3DIR='${PREFIX}/man/man3p' \
		INSTALLBIN='$${PREFIX}/bin' \
		INSTALLSCRIPT='$${INSTALLBIN}' ${CONFIGURE_ARGS}; \
	if ! test -f ${WRKBUILD}/Makefile; then \
		echo >&2 "Fatal: Makefile.PL did not produce a Makefile"; \
		exit 1; \
	fi

.  if ${CONFIGURE_STYLE:L:Mmodinst}
BUILD_DEPENDS +=	devel/p5-Module-Install
CONFIGURE_ARGS +=	--skipdeps
_MODPERL_preconfig = rm -rf ${WRKSRC}/inc/Module/*Install*
.  else
_MODPERL_preconfig = :
.  endif
.endif

MODPERL_pre-fake = \
	${_FAKESUDO} mkdir -p ${WRKINST}`perl -e 'use Config; print $$Config{installarchlib}, "\n";'`

.if ${CONFIGURE_STYLE:L:Mmodbuild}
.  if ${CONFIGURE_STYLE:L:Mtiny}
BUILD_DEPENDS +=	devel/p5-Module-Build-Tiny
.  elif ${CONFIGURE_STYLE:L:Mnone}
# for building Module::Build
.  else
BUILD_DEPENDS +=	devel/p5-Module-Build
.  endif
MODPERL_BUILD_TARGET = \
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} perl \
		${MODPERL_BUILD} build

MODPERL_TEST_TARGET = \
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} perl \
		${MODPERL_BUILD} ${TEST_TARGET}
MODPERL_INSTALL_TARGET = \
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} perl \
		${MODPERL_BUILD} ${FAKE_TARGET} --destdir=${WRKINST}

.  if !target(do-build)
do-build:
	@${MODPERL_BUILD_TARGET}
.  endif
.  if !target(do-test)
do-test:
	@${MODPERL_TEST_TARGET}
.  endif
.  if !target(do-install)
do-install:
	@${MODPERL_INSTALL_TARGET}
.  endif
.endif

P5SITE = libdata/perl5/site_perl
P5ARCH = ${P5SITE}/${MACHINE_ARCH}-openbsd
SUBST_VARS += P5ARCH P5SITE
