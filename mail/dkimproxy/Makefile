COMMENT =		SMTP proxy to verify or add DKIM signatures

DISTNAME =		dkimproxy-1.4.1
REVISION =		4

CATEGORIES =		mail

HOMEPAGE =		https://dkimproxy.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=dkimproxy/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Error \
			devel/p5-Net-Server>=0.91 \
			mail/p5-Mail-DKIM>=0.29

MODULES =		perl
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/dkimproxy

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	perllibdir=${PREFIX}/${P5SITE}

PKG_ARCH =		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dkimproxy
	${INSTALL_DATA} ${WRKSRC}/[A-LN-Z]* ${WRKSRC}/smtpprox.* \
	    ${PREFIX}/share/doc/dkimproxy

.include <bsd.port.mk>
