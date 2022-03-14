#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: perl.port.mk,v 1.35 2022/03/14 08:23:29 sthen Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

TEST_TARGET ?=	test
MODPERL_BUILD ?= Build

P5SITE = libdata/perl5/site_perl
P5ARCH = ${P5SITE}/${MACHINE_ARCH}-openbsd
SUBST_VARS += P5ARCH P5SITE

# For autoconf/automake
CONFIGURE_ENV +=	PERL_LIB="${LOCALBASE}/${P5SITE}" PERL_ARCH="${LOCALBASE}/${P5ARCH}"
#MAKE_ENV +=		PERL_LIB="${LOCALBASE}/${P5SITE}" PERL_ARCH="${LOCALBASE}/${P5ARCH}"

# http://www.gnu.org/software/autoconf-archive/ax_perl_ext.html
CONFIGURE_ENV +=	PERL_EXT_LIB="${LOCALBASE}/${P5ARCH}"
#MAKE_ENV +=		PERL_EXT_LIB="${LOCALBASE}/${P5ARCH}"

PERL_MM_OPT =	INSTALLSITELIB="${LOCALBASE}/${P5SITE}" \
		INSTALLSITEARCH="${LOCALBASE}/${P5ARCH}" \
		INSTALLPRIVLIB="/usr/./libdata/perl5" \
		INSTALLARCHLIB="\$${INSTALLPRIVLIB}/${MACHINE_ARCH}-openbsd" \
		INSTALLMAN1DIR="${LOCALBASE}/man/man1" \
		INSTALLMAN3DIR="${LOCALBASE}/man/man3p" \
		INSTALLBIN="$${LOCALBASE}/bin" \
		INSTALLSCRIPT="$${INSTALLBIN}"

# For ExtUtils::MakeMaker
# in MAKE_ENV because some ports that include modules run it late
CONFIGURE_ENV +=	PERL_MM_OPT="${PERL_MM_OPT}" PERL_MM_USE_DEFAULT=1
MAKE_ENV +=		PERL_MM_OPT="${PERL_MM_OPT}" PERL_MM_USE_DEFAULT=1

PERL_MB_OPT =	--install_path=lib=${LOCALBASE}/${P5SITE} \
		--install_path=arch=${LOCALBASE}/${P5ARCH} \
		--install_path=libdoc="${LOCALBASE}/man/man3p" \
		--install_path=bindoc="${LOCALBASE}/man/man1" \
		--install_path=bin="${LOCALBASE}/bin" \
		--install_path=script="${LOCALBASE}/bin"

# For Module::Build and Module::Build::Tiny
CONFIGURE_ENV +=	PERL_MB_OPT="${PERL_MB_OPT}"
#MAKE_ENV +=		PERL_MB_OPT="${PERL_MB_OPT}"

MODPERL_REGEN_PPPORT ?=	ppport.h

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

.if ${MODPERL_REGEN_PPPORT:L} != no
MODPERL_gen = \
	if test -f ${WRKDIST}/${MODPERL_REGEN_PPPORT}; then \
		echo "Regenerating ${MODPERL_REGEN_PPPORT}"; \
		cd ${WRKDIST} && \
		cp ${MODPERL_REGEN_PPPORT} ${MODPERL_REGEN_PPPORT}.orig.ppport; \
		perl -MDevel::PPPort -e'Devel::PPPort::WriteFile("${MODPERL_REGEN_PPPORT}")'; \
	fi
.endif

.if ${CONFIGURE_STYLE:L:Mmodbuild}
MODPERL_configure = \
    cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} \
    perl Build.PL ${CONFIGURE_ARGS}; \
	if ! test -f ${WRKBUILD}/Build; then \
		echo >&2 "Fatal: Build.PL did not produce a Build script"; \
		exit 1; \
	fi
.else
MODPERL_configure = ${_MODPERL_preconfig}; \
     cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} \
     perl Makefile.PL PREFIX='${PREFIX}' ${CONFIGURE_ARGS}; \
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

MODPERL_pre-fake = mkdir -p ${WRKINST}${P5ARCH}/auto

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
