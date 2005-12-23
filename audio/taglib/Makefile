# $OpenBSD: Makefile,v 1.4 2005/12/23 15:03:09 espie Exp $

COMMENT=	"managing meta-data of audio formats"
DISTNAME=	taglib-1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio devel
MASTER_SITES=	http://ktown.kde.org/~wheeler/files/src/
SHARED_LIBS=	tag	5.0 \
		tag_c	0.0
MODGNU_SHARED_LIBS=	tag	'-no-undefined'	\
			tag_c	'-no-undefined'

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
