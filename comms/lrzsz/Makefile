# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:07 espie Exp $

DISTNAME=	lrzsz-0.12.20
CATEGORIES=	comms
FAKE=No
MASTER_SITES=	ftp://tirka.ohse.de/uwe/releases/ \
		ftp://ftp.netsw.org/netsw/Network/Modem/Protocols/ZModem/lrzsz/ \
		http://www.nrw.net/uwe/archive/ \
		http://194.245.36.15/uwe/archive/ \
		ftp://ftp.ihg.uni-duisburg.de/uwe/ \
		ftp://ftp.kddlabs.co.jp/pub/Linux/packages/stampedelinux/stampedelinux/unstable/pre-0.90/source/comm/lrzsz/source/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	"possible copyright issue with rzsz"
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	"possible copyright issue with rzsz"
PERMIT_DISTFILES_FTP=	YES

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
