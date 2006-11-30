# $OpenBSD: Makefile,v 1.1.1.1 2006/11/30 19:36:49 jasper Exp $

COMMENT=		"subclass for non-blocking (incremental) parsing"

DISTNAME=		XML-SAX-Expat-Incremental-0.04
CATEGORIES=		textproc

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::textproc/p5-XML-SAX-Expat
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
