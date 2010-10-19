# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:24 espie Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME=	Text-WikiFormat-0.78
REVISION=	0
CATEGORIES=	textproc
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI

.include <bsd.port.mk>
