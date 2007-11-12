# $OpenBSD: Makefile,v 1.8 2007/11/12 17:37:22 simon Exp $

COMMENT=	YAML ain't a markup language

MODULES=	cpan

DISTNAME=	YAML-0.66
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-Simple

.include <bsd.port.mk>
