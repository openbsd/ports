# $OpenBSD: Makefile,v 1.16 2007/09/15 22:37:00 merdely Exp $

COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

MODULES=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread readline termcap 

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
