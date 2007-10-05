# $OpenBSD: Makefile,v 1.1.1.1 2007/10/05 14:19:46 jasper Exp $

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

RUN_DEPENDS=		::security/p5-Digest-SHA1 \
			::textproc/p5-XML-Stream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-XMPP
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Net-XMPP

.include <bsd.port.mk>
