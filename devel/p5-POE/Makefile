# $OpenBSD: Makefile,v 1.1.1.1 2005/05/24 01:03:13 msf Exp $

COMMENT=	"portable multitasking and networking framework for perl"

DISTNAME=	POE-0.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

HOMEPAGE=	http://poe.perl.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/} 

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS+= --default

PKG_ARCH=	*

.include <bsd.port.mk>
