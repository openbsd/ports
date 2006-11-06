# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 16:38:27 espie Exp $

COMMENT= 	"explicit encoding for Template Toolkit"

DISTNAME=	Template-Provider-Encoding-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

RUN_DEPENDS=	::textproc/p5-Template

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-DateTime

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
