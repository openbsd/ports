# $OpenBSD: Makefile,v 1.45 2018/08/02 09:07:47 sthen Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

# XXX sticking with 3.x for now;
DISTNAME=	fping-3.16
REVISION=	2

# some dependent programs (net/zabbix, net/monitoring-plugins,
# net/smokeping, net/librenms) expect fping/fping6 separation and would
# want patching to move to "fping -4" / "fping -6".
#
# there is a build method supposed to give exact compatibility, which
# can be handled with some bodging in the port, but the new "--disable-ipv4"
# configure flag doesn't actually work as of 4.0 so e.g. "fping6 somehost"
# succeeds even if somehost is unreachable over v6.

CATEGORIES=	net

HOMEPAGE=	https://fping.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	https://fping.org/dist/

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--bindir=${PREFIX}/sbin \
		--enable-ipv6

.include <bsd.port.mk>
