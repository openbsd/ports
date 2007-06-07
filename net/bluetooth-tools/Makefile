# $OpenBSD: Makefile,v 1.6 2007/06/07 13:10:34 jasper Exp $

COMMENT=		bluetooth network tools
DISTNAME=		bluetooth-tools-20070606
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net
MAINTAINER=		Uwe Stuehler <uwe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.bsdx.de/openbsd/distfiles/

WANTLIB=		c util
LIB_DEPENDS=		bluetooth.>=2.0,sdp.>=2.0::devel/bluetooth-libs

MAKE_ENV=		BINDIR=${TRUEPREFIX}/bin \
			SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man/cat \
			COPTS=-I${LOCALBASE}/include \
			LDADD=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>
