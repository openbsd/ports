# $OpenBSD: Makefile,v 1.20 2013/03/11 11:35:58 espie Exp $

COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9_1
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

MODULES=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pthread readline termcap 

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
