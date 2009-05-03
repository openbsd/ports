# $OpenBSD: Makefile,v 1.11 2009/05/03 15:13:53 martynas Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio devel
MASTER_SITES=	http://ktown.kde.org/~wheeler/files/src/
SHARED_LIBS +=	tag                  7.0      # .6.0
SHARED_LIBS +=	tag_c                2.0      # .0.0

HOMEPAGE= 	http://ktown.kde.org/~wheeler/taglib.html

# LGPLv2.1 / MPLv1.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

WANTLIB=	stdc++ m z

CONFIGURE_ENV=	LIBS="-lstdc++ -lm"
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
