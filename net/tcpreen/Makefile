# $OpenBSD: Makefile,v 1.14 2008/01/08 23:02:28 rui Exp $

COMMENT=		simple tcp re-engineering tool

DISTNAME=		tcpreen-1.4.4
CATEGORIES=		net

HOMEPAGE=		http://www.remlab.net/tcpreen/

MAINTAINER=		Rui Reis <rui@openbsd.org>

MASTER_SITES=		http://www.remlab.net/files/tcpreen/stable/

# GPLv2
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
