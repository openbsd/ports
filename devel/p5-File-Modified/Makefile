# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 15:33:38 espie Exp $

COMMENT=	"checks intelligently if files have changed"

DISTNAME=	File-Modified-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
