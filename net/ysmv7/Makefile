# $OpenBSD: Makefile,v 1.12 2004/12/16 00:31:27 alek Exp $

COMMENT=		"ICQ console client with encryption support"

DISTNAME=		ysmv7_2_9_6
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

MODULES=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread readline termcap 

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.57
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
