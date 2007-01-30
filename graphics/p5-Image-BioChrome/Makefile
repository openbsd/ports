# $OpenBSD: Makefile,v 1.2 2007/01/30 15:11:17 bluhm Exp $

COMMENT= 	"recolor gif images on the fly"

MODULES=	cpan 

DISTNAME=	Image-BioChrome-1.16
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::misc/p5-File-MMagic
REGRESS_DEPENDS=	::textproc/p5-Template \
			::www/mod_perl

.include <bsd.port.mk>
