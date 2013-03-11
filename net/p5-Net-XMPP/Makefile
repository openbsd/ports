# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:53 espie Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.02
REVISION=		1
CATEGORIES=		net

MODULES=		cpan

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	perl modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
