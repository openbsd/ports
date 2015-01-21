# $OpenBSD: Makefile,v 1.8 2015/01/21 14:40:10 sthen Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.02
REVISION=		1
CATEGORIES=		net

MODULES=		cpan

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	perl modbuild

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
