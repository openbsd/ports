# $OpenBSD: Makefile,v 1.1.1.1 2004/06/01 23:21:40 msf Exp $

COMMENT= 	"Test differences in data structures"

DISTNAME=	Test-Differences-0.47
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Text-Diff

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
