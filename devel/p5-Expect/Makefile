# $OpenBSD: Makefile,v 1.1.1.1 2002/08/04 20:28:31 naddy Exp $

COMMENT=		"talk to other applications"

DISTNAME=		Expect-1.15
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Michael Lestinsky <michael@lestinsky.de>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/p5-IO-Tty

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Expect/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
