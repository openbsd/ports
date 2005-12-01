# $OpenBSD: Makefile,v 1.2 2005/12/01 08:02:16 steven Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"event loop processing"

DISTNAME=	Event-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Event/}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
