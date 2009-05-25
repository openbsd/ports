# $OpenBSD: Makefile,v 1.10 2009/05/25 14:06:16 ajacoutot Exp $

COMMENT=	library for reading ID3 tags

DISTNAME=	libid3tag-0.15.1b
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	id3tag               3.0      # .3.0

CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

WANTLIB=	z

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
