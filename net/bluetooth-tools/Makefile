# $OpenBSD: Makefile,v 1.14 2010/10/18 18:36:46 espie Exp $

COMMENT=		bluetooth network tools
DISTNAME=		bluetooth-tools-20081122
REVISION=		0
CATEGORIES=		net
MAINTAINER=		Uwe Stuehler <uwe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.bsdx.de/openbsd/distfiles/

WANTLIB=		c event usbhid util
LIB_DEPENDS=		bluetooth.>=2.0,sdp.>=2.1::devel/bluetooth-libs

MAKE_ENV=		BINDIR=${TRUEPREFIX}/bin \
			SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man/cat \
			COPTS=-I${LOCALBASE}/include \
			LDADD=-L${LOCALBASE}/lib
			USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
