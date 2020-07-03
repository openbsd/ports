# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:37 sthen Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.05
CATEGORIES=		net
REVISION=		0

MODULES=		cpan
PKG_ARCH=		*

# LGPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	perl modbuild

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
