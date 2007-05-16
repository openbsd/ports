# $OpenBSD: Makefile,v 1.3 2007/05/16 06:53:29 steven Exp $

COMMENT=	"translate Wiki formatted text into other formats"	

DISTNAME=	Text-WikiFormat-0.78
PKGNAME=	p5-${DISTNAME}p0
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
