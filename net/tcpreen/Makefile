# $OpenBSD: Makefile,v 1.7 2004/08/03 18:24:40 naddy Exp $

COMMENT=		"simple tcp re-engineering tool"

VERSION=		1.2.4
DISTNAME=		tcpreen-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.simphalempin.com/dev/tcpreen/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcpreen/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
