# $OpenBSD: Makefile,v 1.49 2020/07/25 17:21:33 sthen Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

DISTNAME=	fping-4.4

CATEGORIES=	net

HOMEPAGE=	https://fping.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	https://fping.org/dist/

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--bindir=${PREFIX}/sbin

# some dependent programs want fping/fping6 separation e.g. net/zabbix,
# net/smokeping, net/librenms; with this symlink fping6 is v6-only,
# fping is dual-stack, or fping -4/-6 can be used to force it. 
# see https://github.com/schweikert/fping/pull/139
post-install:
	ln -s fping ${PREFIX}/sbin/fping6

.include <bsd.port.mk>
