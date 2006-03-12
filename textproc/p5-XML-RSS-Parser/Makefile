# $OpenBSD: Makefile,v 1.3 2006/03/12 17:11:14 steven Exp $

COMMENT=		"liberal object-oriented parser for RSS feeds"
DISTNAME=		XML-RSS-Parser-4.0
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=		:p5-XML-Elemental->=2.0:textproc/p5-XML-Elemental \
	 		:p5-Class-XPath->=1.4:devel/p5-Class-XPath \
			::devel/p5-Class-ErrorHandler
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

WRKDIST= 		${WRKDIR}/XML-RSS-Parser-4

pre-configure:
	@rm -f ${WRKBUILD}/lib/XML/RSS/*.orig

.include <bsd.port.mk>
