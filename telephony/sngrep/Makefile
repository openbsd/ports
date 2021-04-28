# $OpenBSD: Makefile,v 1.1.1.1 2021/04/28 19:12:30 sthen Exp $

COMMENT=	SIP packet capture tool with curses UI

GH_ACCOUNT=	irontec
GH_PROJECT=	sngrep
GH_TAGNAME=	v1.4.8

CATEGORIES=	telephony net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses form menu panel pcap pthread ssl

DEBUG_PACKAGES=	${BUILD_PACKAGES}
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/sngrep

CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS=	--enable-ipv6 \
		--enable-unicode \
		--with-openssl

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

TEST_ENV=	TERM=vt220

AUTORECONF=	${WRKSRC}/bootstrap.sh

.include <bsd.port.mk>
