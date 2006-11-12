# $OpenBSD: cpan.port.mk,v 1.2 2006/11/12 10:45:40 espie Exp $

PKGNAME?=	p5-${DISTNAME}
MASTER_SITES?=	${MASTER_SITE_PERL_CPAN:=${DISTNAME:C/-.*$//}/}
CATEGORIES+=	perl5
CONFIGURE_STYLE+=perl
MODULES+=	perl

REGRESS_DEPENDS+=${RUN_DEPENDS}

.if !defined(SHARED_ONLY)
PKG_ARCH?=	* 
.endif

.if ${MAKE_ENV:MTEST_POD=*}
REGRESS_DEPENDS+=::devel/p5-Test-Pod \
		 ::devel/p5-Test-Pod-Coverage
.endif
