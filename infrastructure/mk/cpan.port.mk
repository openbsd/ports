# $OpenBSD: cpan.port.mk,v 1.1 2006/11/12 10:29:15 espie Exp $

PKGNAME?=	p5-${DISTNAME}
MASTER_SITES?=	${MASTER_SITE_PERL_CPAN:=${DISTNAME:C/-*//}}
CATEGORIES+=	perl5
CONFIGURE_STYLE+=perl
MODULES+=	perl

.if !defined(SHARED_ONLY)
PKG_ARCH?=	* 
.endif
