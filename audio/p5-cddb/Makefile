# $OpenBSD: Makefile,v 1.32 2020/07/03 21:44:31 sthen Exp $

COMMENT=	interface to CDDB and freedb servers

DISTNAME=	CDDB-1.222
REVISION=	1
CATEGORIES=	audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

TEST_DEPENDS=	www/p5-HTTP-Message \
		www/p5-libwww

PKG_ARCH=	*

.include <bsd.port.mk>
