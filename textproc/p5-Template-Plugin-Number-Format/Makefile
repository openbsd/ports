# $OpenBSD: Makefile,v 1.1.1.1 2006/07/09 18:17:06 sturm Exp $

COMMENT= 	"plugin/filter interface to Number::Format"

DISTNAME=	Template-Plugin-Number-Format-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Number-Format \
		::textproc/p5-Template

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
