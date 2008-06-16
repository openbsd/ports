# $OpenBSD: Makefile,v 1.3 2008/06/16 20:24:50 simon Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan

DISTNAME=	Test-Spelling-0.11
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel textproc

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Pod-Spell \
		::textproc/aspell/core

.include <bsd.port.mk>
