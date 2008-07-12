# $OpenBSD: Makefile,v 1.7 2008/07/12 12:22:33 dhill Exp $

COMMENT=	framework for parsing the Perl Pod format

MODULES=	cpan
DISTNAME=	Pod-Simple-3.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

RUN_DEPENDS=	::textproc/p5-Pod-Escapes
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
