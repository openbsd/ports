# $OpenBSD: Makefile,v 1.1.1.1 2004/12/22 02:18:40 msf Exp $

COMMENT=	"A simple tree object"

DISTNAME=	Tree-Simple-1.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tree/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::devel/p5-Test-Memory-Cycle

PKG_ARCH=	*

.include <bsd.port.mk>
