# $OpenBSD: Makefile,v 1.95 2021/08/30 12:56:05 stsp Exp $

COMMENT=	DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client

PORTROACH=	site:https://github.com/NetworkConfiguration/dhcpcd/releases/

GH_ACCOUNT=	NetworkConfiguration
GH_PROJECT=	dhcpcd
GH_COMMIT=	01748b315d7093f458b9379bc77f19762c721314

DISTNAME=	dhcpcd-9.4.0pl1
REVISION=	1
EPOCH=		0

CATEGORIES=	net

HOMEPAGE=	https://roy.marples.name/projects/dhcpcd

# BSD-2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--enable-privsep \
		--privsepuser=_dhcpcd \
		--prefix='${PREFIX}' \
		--sysconfdir='${SYSCONFDIR}' \
		--mandir='${PREFIX}/man' \
		--localstatedir='${LOCALSTATEDIR}'
FAKE_FLAGS=	SYSCONFDIR=${PREFIX}/share/examples/dhcpcd

.include <bsd.port.mk>
