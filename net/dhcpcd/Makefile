COMMENT=	DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client

V=		10.0.10
DISTNAME=	dhcpcd-$V
EXTRACT_SUFX=	.tar.xz

EPOCH=		0

CATEGORIES=	net

HOMEPAGE=	https://roy.marples.name/projects/dhcpcd
SITES=		https://github.com/NetworkConfiguration/dhcpcd/releases/download/v$V/

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
