# $OpenBSD: Makefile,v 1.2 2018/06/18 10:00:10 ajacoutot Exp $

COMMENT=	client for MikroTik's "L2 telnet" protocol#'

GH_ACCOUNT=	haakonnessjoen
GH_PROJECT=	MAC-Telnet
GH_TAGNAME=	v0.4.4
PKGNAME=	${DISTNAME:L}

CATEGORIES=	net

HOMEPAGE=	http://lunatic.no/2010/10/routeros-mac-telnet-application-for-linux-users/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/gettext-tools

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--disable-nls

CONFIGURE_STYLE=  gnu
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	rm ${WRKINST}/etc/mactelnetd.users ${PREFIX}/man/man1/mactelnetd.1

.include <bsd.port.mk>
