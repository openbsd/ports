# $OpenBSD: Makefile,v 1.4 2007/07/27 18:40:21 simon Exp $

COMMENT=	add / call inheritable triggers

MODULES=	cpan
DISTNAME=	Class-Trigger-0.11
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-IO-stringy

.include <bsd.port.mk>
