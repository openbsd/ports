# $OpenBSD: Makefile,v 1.16 2002/12/29 19:32:37 fgsch Exp $

COMMENT=	"receive/send files via X/Y/ZMODEM protocol"

DISTNAME=	lrzsz-0.12.20
CATEGORIES=	comms

MASTER_SITES=	ftp://tirka.ohse.de/uwe/releases/ \
		ftp://ftp.netsw.org/netsw/Network/Modem/Protocols/ZModem/lrzsz/ \
		http://www.nrw.net/uwe/archive/ \
		http://194.245.36.15/uwe/archive/ \
		ftp://ftp.ihg.uni-duisburg.de/uwe/ \
		ftp://ftp.kddlabs.co.jp/pub/Linux/packages/stampedelinux/stampedelinux/unstable/pre-0.90/source/comm/lrzsz/source/

PERMIT_PACKAGE_CDROM=	"possible copyright issue with rzsz"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"possible copyright issue with rzsz"
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
