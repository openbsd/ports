# $OpenBSD: Makefile,v 1.22 2016/04/09 20:14:49 naddy Exp $

COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9_1
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

LIB_DEPENDS=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c iconv pthread readline termcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
