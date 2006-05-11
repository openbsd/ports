# $OpenBSD: Makefile,v 1.1.1.1 2006/05/11 11:37:45 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	"(re)name a sub"

DISTNAME=	Sub-Name-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sub/} 

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
