# $OpenBSD: Makefile,v 1.1.1.1 2002/08/02 20:44:50 jakob Exp $

COMMENT=	"IO:: style interface to Compress::Zlib"

DISTNAME=	IO-Zlib-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Compress-Zlib->1.15:archivers/p5-Compress-Zlib
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
