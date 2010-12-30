# $OpenBSD: Makefile,v 1.7 2010/12/30 09:31:34 benoit Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.40
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
