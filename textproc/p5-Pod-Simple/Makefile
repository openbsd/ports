# $OpenBSD: Makefile,v 1.5 2007/01/21 21:46:21 simon Exp $

COMMENT=	"framework for parsing the Perl Pod format"

MODULES=	cpan
DISTNAME=	Pod-Simple-3.04
PKGNAME=	p5-${DISTNAME}p0
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
