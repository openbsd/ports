# $OpenBSD: Makefile,v 1.10 2016/04/01 20:30:59 sebastia Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.05
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
