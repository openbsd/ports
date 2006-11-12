# $OpenBSD: cpan.port.mk,v 1.3 2006/11/12 10:48:17 espie Exp $

PKGNAME?=	p5-${DISTNAME}
MASTER_SITES?=	${MASTER_SITE_PERL_CPAN:=${DISTNAME:C/-.*$//}/}
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
