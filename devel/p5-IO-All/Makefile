# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT= 	universal I/O to everything

MODULES=	cpan 
DISTNAME=	IO-All-0.39
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-IO-String

REGRESS_DEPENDS=devel/p5-File-ReadBackwards

.include <bsd.port.mk>
