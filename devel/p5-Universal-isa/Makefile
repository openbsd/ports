# $OpenBSD: Makefile,v 1.2 2006/11/05 10:31:49 espie Exp $

COMMENT=	"calling UNIVERSAL::isa as a function"

DISTNAME=	UNIVERSAL-isa-0.06
PKGNAME=	p5-Universal-isa-0.06
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=UNIVERSAL/}

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
