# $OpenBSD: Makefile,v 1.18 2010/10/18 18:37:00 espie Exp $

COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9_1
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

USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
