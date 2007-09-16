# $OpenBSD: Makefile,v 1.9 2007/09/16 02:53:03 merdely Exp $

COMMENT=	run-time class loading on first method call

MODULES=	cpan
DISTNAME=	Class-Autouse-1.27
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-prefork

.include <bsd.port.mk>
