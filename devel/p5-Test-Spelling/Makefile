# $OpenBSD: Makefile,v 1.1.1.1 2006/12/31 08:38:28 msf Exp $

COMMENT=	"check for spelling errors in POD files"

MODULES=	cpan

DISTNAME=	Test-Spelling-0.11
CATEGORIES=	devel textproc

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Pod-Spell

.include <bsd.port.mk>
