# $OpenBSD: Makefile,v 1.3 2005/12/06 18:49:24 bernd Exp $

COMMENT=		"high performance embedded database library"

DISTNAME=		qdbm-1.8.35
CATEGORIES=		databases

HOMEPAGE=		http://qdbm.sourceforge.net

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qdbm/}

WANTLIB=		c z
MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-zlib \
			--enable-iconv

.include <bsd.port.mk>
