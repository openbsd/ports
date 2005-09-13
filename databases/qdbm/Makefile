# $OpenBSD: Makefile,v 1.2 2005/09/13 18:52:14 bernd Exp $

COMMENT=		"high performance embedded database library"

DISTNAME=		qdbm-1.8.33
CATEGORIES=		databases

HOMEPAGE=		http://qdbm.sourceforge.net

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

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
