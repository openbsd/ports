# $OpenBSD: Makefile,v 1.6 1999/09/22 20:21:55 brad Exp $

DISTNAME=	lrzsz-0.12.20
CATEGORIES=	comms
MASTER_SITES=	ftp://tirka.ohse.de/uwe/releases/ \
		ftp://ftp.netsw.org/netsw/Network/Modem/Protocols/ZModem/lrzsz/ \
		http://www.nrw.net/uwe/archive/ \
		http://194.245.36.15/uwe/archive/ \
		ftp://ftp.ihg.uni-duisburg.de/uwe/ \
		ftp://ftp.kddlabs.co.jp/pub/Linux/packages/stampedelinux/stampedelinux/unstable/pre-0.90/source/comm/lrzsz/source/

MAINTAINER=	ports@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
