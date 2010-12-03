# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.37
REVISION=	0
CATEGORIES=	devel www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	www/p5-libwww \
		devel/p5-DateTime

.include <bsd.port.mk>
