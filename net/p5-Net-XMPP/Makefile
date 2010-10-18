# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:55 espie Exp $

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-XMPP
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Net-XMPP

.include <bsd.port.mk>
