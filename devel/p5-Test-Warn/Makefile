# $OpenBSD: Makefile,v 1.1.1.1 2004/07/09 01:37:38 msf Exp $

COMMENT= 	"Perl extension to test methods for warnings"

DISTNAME=	Test-Warn-0.08
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
RUN_DEPENDS=	::devel/p5-Array-Compare \
		::devel/p5-Test-Exception \
		::devel/p5-Tree-DAG_Node

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
