# $OpenBSD: Makefile,v 1.1.1.1 2004/07/01 18:23:09 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"event loop processing"

DISTNAME=	Event-1.00
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
