# $OpenBSD: Makefile,v 1.3 2006/10/15 00:33:31 msf Exp $

COMMENT=	"converts Perl XS code into C code" 

DISTNAME=	ExtUtils-ParseXS-2.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=ExtUtils/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-ExtUtils-CBuilder

CONFIGURE_STYLE= perl
CONFIGURE_ARGS+= INSTALLDIRS= perl

PKG_ARCH=	*

.include <bsd.port.mk>
