# $OpenBSD: Makefile,v 1.1.1.1 2004/05/19 21:15:47 msf Exp $

COMMENT=	"Perl module for use in de-obfuscating source code"

DISTNAME=	B-Deobfuscate-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=B/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-YAML

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
