# $OpenBSD: Makefile,v 1.1.1.1 2004/06/01 02:14:14 msf Exp $

COMMENT=	"Perl IDN nameprep tools"

DISTNAME=	Net-IDN-Nameprep-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://search.cpan.org/CPAN/authors/id/M/MI/MIYAGAWA/

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::converters/p5-Unicode-String

PKG_ARCH=	*

.include <bsd.port.mk>
