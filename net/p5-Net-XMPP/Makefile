# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:56 naddy Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.02
REVISION=		1
CATEGORIES=		net

MODULES=		cpan
PKG_ARCH=		*

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	perl modbuild

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
