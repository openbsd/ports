# $OpenBSD: Makefile,v 1.10 2005/02/07 19:01:49 pvalchev Exp $

COMMENT=		"simple tcp re-engineering tool"

VERSION=		1.2.4
DISTNAME=		tcpreen-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.simphalempin.com/dev/tcpreen/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcpreen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ 

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
