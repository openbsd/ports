# $OpenBSD: cpan.port.mk,v 1.8 2008/08/20 10:33:50 simon Exp $

PKGNAME ?=	p5-${DISTNAME}
.if !defined(CPAN_AUTHOR)
MASTER_SITES ?=	${MASTER_SITE_PERL_CPAN:=${DISTNAME:C/-.*$//}/}
.else
MASTER_SITES ?=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/${CPAN_AUTHOR:C/^(.).*/\1/}/${CPAN_AUTHOR:C/^(..).*/\1/}/${CPAN_AUTHOR}/}
.endif

CATEGORIES +=	perl5
CONFIGURE_STYLE +=	perl
MODULES +=	perl

REGRESS_DEPENDS +=	${RUN_DEPENDS}

.if !defined(SHARED_ONLY) || ${SHARED_ONLY:L} != "yes"
PKG_ARCH ?=	* 
.endif

.if defined(MAKE_ENV) && !empty(MAKE_ENV:MTEST_POD=*)
REGRESS_DEPENDS +=	::devel/p5-Test-Pod \
		 	::devel/p5-Test-Pod-Coverage
.endif

CPAN_REPORT ?=	No

.if ${CPAN_REPORT:L} == "yes"
REGRESS_DEPENDS +=	::devel/p5-Test-Reporter
REGRESS_FLAGS +=	TEST_VERBOSE=1
REGRESS_STATUS_IGNORE =	-
.  if !defined(CPAN_REPORT_DB)
ERRORS +=	"Fatal: CPAN_REPORT_DB must point to a directory"
.  endif
.  if !defined(CPAN_REPORT_FROM) || empty(CPAN_REPORT_FROM)
ERRORS +=	"Fatal: CPAN_REPORT_FROM needs an email address"
.  endif

CPANTEST =	perl ${PORTSDIR}/infrastructure/build/cpanreport
CPANTEST_FLAGS =-f ${REGRESS_LOGFILE} -s ${CPAN_REPORT_FROM:Q} ${DISTNAME} \
			> ${CPAN_REPORT_DB}/${PKGNAME}
CPANTEST_PASS =	-g pass ${CPANTEST_FLAGS}
CPANTEST_FAIL =	-g fail ${CPANTEST_FLAGS}

post-regress:
	@mkdir -p ${CPAN_REPORT_DB}
	@if grep -q FAILED ${REGRESS_LOGFILE}; then \
		${CPANTEST} ${CPANTEST_FAIL}; \
		exit 1; \
	else ${CPANTEST} ${CPANTEST_PASS}; fi

.endif
