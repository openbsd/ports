# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:40 sthen Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.05
CATEGORIES=		net

MODULES=		cpan
PKG_ARCH=		*

# LGPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	perl modbuild

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
