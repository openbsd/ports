# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:11 sthen Exp $

COMMENT=	add / call inheritable triggers

MODULES=	cpan
DISTNAME=	Class-Trigger-0.11
REVISION=	0
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
