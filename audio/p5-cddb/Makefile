# $OpenBSD: Makefile,v 1.31 2020/07/01 01:18:20 cwen Exp $

COMMENT=	interface to CDDB and freedb servers

DISTNAME=	CDDB-1.222
REVISION=	0
CATEGORIES=	audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

TEST_DEPENDS=	www/p5-HTTP-Message \
		www/p5-libwww

PKG_ARCH=	*

.include <bsd.port.mk>
