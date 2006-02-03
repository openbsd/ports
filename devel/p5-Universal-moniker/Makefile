# $OpenBSD: Makefile,v 1.2 2006/02/03 16:56:58 msf Exp $

COMMENT=	"Perl module for aliasing class names"

DISTNAME=	UNIVERSAL-moniker-0.08
PKGNAME=	p5-Universal-moniker-0.08
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=UNIVERSAL/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect

CONFIGURE_STYLE= perl

PKG_ARCH= 	*

.include <bsd.port.mk>
