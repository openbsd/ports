# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:56 espie Exp $

COMMENT=        lets you build groups of accessors

MODULES=	cpan
DISTNAME=	Class-Accessor-Grouped-0.09001
CATEGORIES=     devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-MRO-Compat \
		::devel/p5-Class-Inspector \
		::devel/p5-Class-XSAccessor \
		::devel/p5-Sub-Identify \
		::devel/p5-Sub-Name
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
