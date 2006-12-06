# $OpenBSD: Makefile,v 1.2 2006/12/06 06:09:36 deanna Exp $

COMMENT=	"module for translating Wiki formatted text into other formats"	

DISTNAME=	Text-WikiFormat-0.78
CATEGORIES=	textproc
MODULES=	cpan

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI

.include <bsd.port.mk>
