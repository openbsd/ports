# $OpenBSD: Makefile,v 1.7 2010/10/23 11:04:19 jasper Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME=	Text-WikiFormat-0.78
REVISION=	1
CATEGORIES=	textproc
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI

.include <bsd.port.mk>
