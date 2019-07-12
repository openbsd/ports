# $OpenBSD: Makefile,v 1.20 2019/07/12 20:45:05 sthen Exp $

COMMENT=	subversion activity notification

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	SVN-Notify-2.87
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/subversion,-perl \
			mail/p5-Email-Address-XS>=1.03 \
			www/p5-HTML-Parser

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
