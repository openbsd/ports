# $OpenBSD: Makefile,v 1.5 2004/11/08 19:41:43 naddy Exp $

COMMENT=	"IO:: style interface to Compress::Zlib"

DISTNAME=	IO-Zlib-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Compress-Zlib->1.15:archivers/p5-Compress-Zlib
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
