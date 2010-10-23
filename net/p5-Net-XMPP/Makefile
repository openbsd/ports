# $OpenBSD: Makefile,v 1.3 2010/10/23 09:35:20 jasper Exp $

COMMENT=		XMPP perl library

DISTNAME=		Net-XMPP-1.02
CATEGORIES=		net

MODULES=		cpan

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		::security/p5-Digest-SHA1 \
			::textproc/p5-XML-Stream

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
