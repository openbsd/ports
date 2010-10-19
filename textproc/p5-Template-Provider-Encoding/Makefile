# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:24 espie Exp $

COMMENT= 	explicit encoding for Template Toolkit

MODULES=	cpan
DISTNAME=	Template-Provider-Encoding-0.10
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Template

REGRESS_DEPENDS=::devel/p5-DateTime

.include <bsd.port.mk>
