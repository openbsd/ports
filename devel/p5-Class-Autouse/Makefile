# $OpenBSD: Makefile,v 1.10 2008/06/11 18:20:55 okan Exp $

COMMENT=	run-time class loading on first method call

MODULES=	cpan
DISTNAME=	Class-Autouse-1.29
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-prefork

.include <bsd.port.mk>
