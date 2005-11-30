# $OpenBSD: Makefile,v 1.14 2005/11/30 22:13:31 steven Exp $

COMMENT=	"perl module to build DOM Level 1 structures"

DISTNAME=	XML-DOM-1.44
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-Parser->=2.30:textproc/p5-XML-Parser	\
		:p5-Libxml-*:textproc/p5-Libxml		\
		:p5-XML-RegExp-*:textproc/p5-XML-RegExp	\
		:p5-libwww-*:www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
