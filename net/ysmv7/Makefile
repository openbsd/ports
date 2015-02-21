# $OpenBSD: Makefile,v 1.21 2015/02/21 00:01:20 schwarze Exp $

COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9_1
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

MODULES=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pthread readline termcap 

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
