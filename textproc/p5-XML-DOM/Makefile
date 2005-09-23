# $OpenBSD: Makefile,v 1.13 2005/09/23 19:41:45 pvalchev Exp $

COMMENT=	"perl module to build DOM Level 1 structures"

DISTNAME=	XML-DOM-1.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
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

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
