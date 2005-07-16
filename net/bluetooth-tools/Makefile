# $OpenBSD: Makefile,v 1.1.1.1 2005/07/16 20:49:46 grange Exp $

COMMENT=		"bluetooth network tools"
DISTNAME=		bluetooth-tools-20050716
CATEGORIES=		net
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.erisiandiscord.de/pub/misc/

WANTLIB=		c
LIB_DEPENDS=		bluetooth.1.0::devel/bluetooth-libs

MAKE_ENV=		BINDIR=${TRUEPREFIX}/bin SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man/cat \
			COPTS=-I${LOCALBASE}/include LDADD=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>
