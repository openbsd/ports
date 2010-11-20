# $OpenBSD: Makefile,v 1.20 2010/11/20 19:56:50 espie Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
DISTNAME=	XML-DOM-1.44
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
