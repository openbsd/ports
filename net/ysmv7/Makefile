# $OpenBSD: Makefile,v 1.2 2002/10/28 01:38:46 naddy Exp $

COMMENT=		"icq console client with encryption support"
DISTNAME=		ysmv7_2_8_0
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

HOMEPAGE=		http://ysmv7.sourceforge.net/

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	autoconf

NO_REGRESS=		Yes

.include <bsd.port.mk>
