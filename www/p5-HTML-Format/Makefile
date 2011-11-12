# $OpenBSD: Makefile,v 1.16 2011/11/12 20:01:56 dhill Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
DISTNAME=	HTML-Format-2.10
CATEGORIES=	www devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
