# $OpenBSD: Makefile,v 1.2 2003/08/24 20:31:23 sturm Exp $

COMMENT=	"module to read TNEF files"

DISTNAME=	Convert-TNEF-0.17
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

MAINTAINER=	Ibrahim Khalifa <ibo@toontown.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Convert/}

RUN_DEPENDS=	:p5-MIME-tools-*:mail/p5-MIME-tools
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
