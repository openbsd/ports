# $OpenBSD: Makefile,v 1.2 2005/07/17 18:20:29 grange Exp $

COMMENT=		"bluetooth network tools"
DISTNAME=		bluetooth-tools-20050716
PKGNAME=		${DISTNAME}p0
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
