# $OpenBSD: Makefile,v 1.1.1.1 2006/03/18 21:14:42 sturm Exp $

COMMENT=	"module for translating Wiki formatted text into other formats"	

DISTNAME=	Text-WikiFormat-0.77
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
