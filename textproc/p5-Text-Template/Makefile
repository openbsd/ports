# $OpenBSD: Makefile,v 1.7 2004/12/08 18:00:37 msf Exp $

COMMENT=	"expand template text with embedded perl"

DISTNAME=	Text-Template-1.44
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
