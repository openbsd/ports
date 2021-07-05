# $OpenBSD: Makefile,v 1.2 2021/07/05 12:39:24 sthen Exp $

COMMENT=	SIP packet capture tool with curses UI

GH_ACCOUNT=	irontec
GH_PROJECT=	sngrep
GH_TAGNAME=	v1.4.9

CATEGORIES=	telephony net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

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
