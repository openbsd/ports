# $OpenBSD: Makefile,v 1.5 2010/11/17 08:05:15 espie Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 
USE_GROFF =	Yes

DISTNAME=	Image-BioChrome-1.16
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
REGRESS_DEPENDS=	textproc/p5-Template \
			www/mod_perl

.include <bsd.port.mk>
