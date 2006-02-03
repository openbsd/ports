# $OpenBSD: Makefile,v 1.4 2006/02/03 16:18:21 msf Exp $

COMMENT=	"Perl module for comparing arrays"

DISTNAME=	Array-Compare-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Array/}

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
