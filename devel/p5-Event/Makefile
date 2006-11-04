# $OpenBSD: Makefile,v 1.4 2006/11/04 10:14:36 jasper Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"event loop processing"

DISTNAME=	Event-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Event/}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
