# $OpenBSD: Makefile,v 1.7 2006/10/28 10:30:41 espie Exp $

COMMENT=	"managing meta-data of audio formats"
DISTNAME=	taglib-1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio devel
MASTER_SITES=	http://ktown.kde.org/~wheeler/files/src/
SHARED_LIBS +=	tag                  6.0      # .5.0
SHARED_LIBS +=	tag_c                1.0      # .0.0

HOMEPAGE= 	http://ktown.kde.org/~wheeler/taglib.html

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

WANTLIB=	stdc++ m z

CONFIGURE_ENV=	LIBS="-lstdc++ -lm"
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
