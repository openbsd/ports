# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT= 	"DateTime::Format extension to HTTP formats"

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.37
CATEGORIES=	devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::www/p5-libwww \
		::devel/p5-DateTime

.include <bsd.port.mk>
