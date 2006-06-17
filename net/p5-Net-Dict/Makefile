# $OpenBSD: Makefile,v 1.2 2006/06/17 15:31:52 naddy Exp $

COMMENT=	"Perl Interface to the DICT protocol"

DISTNAME=	Net-Dict-2.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

RUN_DEPENDS=	::devel/p5-AppConfig-Std

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
