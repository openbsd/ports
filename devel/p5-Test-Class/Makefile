# $OpenBSD: Makefile,v 1.5 2006/11/29 08:23:30 espie Exp $

COMMENT=	"easily create test classes in an xUnit style"

MODULES=	cpan
DISTNAME=	Test-Class-0.11
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception

.include <bsd.port.mk>
