# $OpenBSD: Makefile,v 1.4 2008/10/05 21:11:38 jasper Exp $

COMMENT= 	universal I/O to everything

MODULES=	cpan 
DISTNAME=	IO-All-0.38
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-IO-String

REGRESS_DEPENDS=::devel/p5-File-ReadBackwards

.include <bsd.port.mk>
