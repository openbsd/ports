# $OpenBSD: Makefile,v 1.4 2003/01/29 01:13:34 margarida Exp $

COMMENT=		"simple tcp re-engineering tool"

VERSION=		1.2.0
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

.include <bsd.port.mk>
