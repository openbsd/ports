# $OpenBSD: Makefile,v 1.2 2009/10/21 22:49:48 sthen Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.09
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-File-Find-Rule->=0.20:devel/p5-File-Find-Rule

.include <bsd.port.mk>
