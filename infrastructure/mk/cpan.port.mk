# $OpenBSD: cpan.port.mk,v 1.4 2006/11/25 13:14:40 espie Exp $

PKGNAME?=	p5-${DISTNAME}
.if !defined(CPAN_AUTHOR)
MASTER_SITES?=	${MASTER_SITE_PERL_CPAN:=${DISTNAME:C/-.*$//}/}
.else
MASTER_SITES?=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/${CPAN_AUTHOR:C/^(.).*/\1/}/${CPAN_AUTHOR:C/^(..).*/\1/}/${CPAN_AUTHOR}/}
.endif

CATEGORIES+=	perl5
CONFIGURE_STYLE+=perl
MODULES+=	perl

REGRESS_DEPENDS+=${RUN_DEPENDS}

.if !defined(SHARED_ONLY) || ${SHARED_ONLY:L} != "yes"
PKG_ARCH?=	* 
.endif

.if defined(MAKE_ENV) && !empty(MAKE_ENV:MTEST_POD=*)
REGRESS_DEPENDS+=::devel/p5-Test-Pod \
		 ::devel/p5-Test-Pod-Coverage
.endif
