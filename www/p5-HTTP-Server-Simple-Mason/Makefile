# $OpenBSD: Makefile,v 1.13 2020/07/03 21:46:03 sthen Exp $

COMMENT=	abstract baseclass for a standalone mason server

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTTP-Server-Simple-Mason-0.14
CATEGORIES=	www
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Hook-LexWrap \
		www/p5-HTML-Mason \
		www/p5-HTTP-Server-Simple

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	ex

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
