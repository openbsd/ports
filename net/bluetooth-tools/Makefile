# $OpenBSD: Makefile,v 1.10 2008/06/12 21:58:11 sthen Exp $

COMMENT=		bluetooth network tools
DISTNAME=		bluetooth-tools-20080217
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net
MAINTAINER=		Uwe Stuehler <uwe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.bsdx.de/openbsd/distfiles/

WANTLIB=		c event usbhid util
LIB_DEPENDS=		bluetooth.>=2.0,sdp.>=2.0::devel/bluetooth-libs

MAKE_ENV=		BINDIR=${TRUEPREFIX}/bin \
			SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man/cat \
			COPTS=-I${LOCALBASE}/include \
			LDADD=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>
