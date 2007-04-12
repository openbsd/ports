# $OpenBSD: Makefile,v 1.5 2007/04/12 18:59:36 jasper Exp $

COMMENT=		"liberal object-oriented parser for RSS feeds"

MODULES=		cpan
DISTNAME=		XML-RSS-Parser-4.0
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=		:p5-XML-Elemental->=2.0:textproc/p5-XML-Elemental \
	 		:p5-Class-XPath->=1.4:devel/p5-Class-XPath \
			::devel/p5-Class-ErrorHandler

WRKDIST= 		${WRKDIR}/XML-RSS-Parser-4

pre-configure:
	@rm -f ${WRKBUILD}/lib/XML/RSS/*.orig

.include <bsd.port.mk>
