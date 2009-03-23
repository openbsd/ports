# $OpenBSD: Makefile,v 1.5 2009/03/23 14:01:20 jasper Exp $

COMMENT= 	universal I/O to everything

MODULES=	cpan 
DISTNAME=	IO-All-0.39
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-IO-String

REGRESS_DEPENDS=::devel/p5-File-ReadBackwards

.include <bsd.port.mk>
