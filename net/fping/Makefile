# $OpenBSD: Makefile,v 1.44 2018/08/01 16:37:51 sthen Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

# XXX sticking with 3.x for now;
DISTNAME=	fping-3.16
# some dependent programs rely on fping/fping6 separation and will need
# patching to move to "fping -4" / "fping -6". there is a build method
# supposed to give exact compatibility, which can be handled with some
# bodging, but the new "--disable-ipv4" configure flag doesn't actually
# work so e.g. "fping6 somehost" succeeds even if somehost is unreachable
# over v6.
REVISION=	2

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
