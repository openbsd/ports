COMMENT=	update client for dynamic DNS services

GH_ACCOUNT=	ddclient
GH_PROJECT=	ddclient
GH_TAGNAME=	v4.0.0

CATEGORIES=	net

HOMEPAGE=	https://ddclient.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

CONFIGURE_ARGS=	--with-curl=${LOCALBASE}/bin/curl \
		--runstatedir=/var/run/ddclient

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

RUN_DEPENDS=	net/curl
TEST_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-MockModule \
		devel/p5-Test-Warnings \
		net/p5-Test-TCP \
		www/p5-HTTP-Daemon \
		www/p5-HTTP-Message \
		www/p5-Plack \
		www/p5-URI

PKG_ARCH=	*

.include <bsd.port.mk>
