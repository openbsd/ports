# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:51 espie Exp $

COMMENT=		subclass for non-blocking (incremental) parsing

DISTNAME=		XML-SAX-Expat-Incremental-0.05
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		textproc/p5-XML-SAX-Expat
REGRESS_DEPENDS=	devel/p5-Test-Exception

.include <bsd.port.mk>
