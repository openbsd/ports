# $OpenBSD: Makefile,v 1.4 2006/06/25 14:48:15 espie Exp $

COMMENT=	"framework for parsing the Perl Pod format"

DISTNAME=	Pod-Simple-3.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}
MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

RUN_DEPENDS=	::textproc/p5-Pod-Escapes
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
