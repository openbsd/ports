# $OpenBSD: Makefile,v 1.3 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"ICQ console client with encryption support"

DISTNAME=		ysmv7_2_8_0
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net

HOMEPAGE=		http://ysmv7.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ysmv7/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	autoconf

NO_REGRESS=		Yes

.include <bsd.port.mk>
