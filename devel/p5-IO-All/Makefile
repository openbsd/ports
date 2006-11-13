# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:09:50 espie Exp $

COMMENT= 	"universal io to everything"

MODULES=	cpan 

DISTNAME=	IO-All-0.36
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-IO-String

REGRESS_DEPENDS=::devel/p5-File-ReadBackwards
.include <bsd.port.mk>
