# $OpenBSD: Makefile,v 1.2 2003/01/30 13:51:35 sturm Exp $

COMMENT=		"talk to other applications"

DISTNAME=		Expect-1.15
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Michael Lestinsky <michael@lestinsky.de>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-IO-Tty

REGRESS_DEPENDS=	${RUN_DEPENDS}

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Expect/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
