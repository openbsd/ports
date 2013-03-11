# $OpenBSD: Makefile,v 1.22 2013/03/11 11:42:45 espie Exp $

COMMENT=	perl module to build DOM Level 1 structures

MODULES=	cpan
DISTNAME=	XML-DOM-1.44
REVISION=	1
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.30	\
		textproc/p5-Libxml		\
		textproc/p5-XML-RegExp	\
		www/p5-libwww

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
