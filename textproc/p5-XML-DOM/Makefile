# $OpenBSD: Makefile,v 1.15 2007/01/21 21:46:21 simon Exp $

COMMENT=	"perl module to build DOM Level 1 structures"

MODULES=	cpan
DISTNAME=	XML-DOM-1.44
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

RUN_DEPENDS=	:p5-XML-Parser->=2.30:textproc/p5-XML-Parser	\
		:p5-Libxml-*:textproc/p5-Libxml		\
		:p5-XML-RegExp-*:textproc/p5-XML-RegExp	\
		:p5-libwww-*:www/p5-libwww

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
