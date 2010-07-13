# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:23 sthen Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME=	Text-WikiFormat-0.78
REVISION=	0
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
