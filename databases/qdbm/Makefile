# $OpenBSD: Makefile,v 1.1.1.1 2005/07/23 16:58:49 aanriot Exp $

COMMENT=		"high performance embedded database library"

DISTNAME=		qdbm-1.8.31
CATEGORIES=		databases

HOMEPAGE=		http://qdbm.sourceforge.net

MAINTAINER=		Bernd Ahlers <b.ahlers@ba-net.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qdbm/}

WANTLIB= c z

MODULES= converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-zlib \
			--enable-iconv

.include <bsd.port.mk>
