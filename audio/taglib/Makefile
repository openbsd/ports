# $OpenBSD: Makefile,v 1.3 2005/11/18 16:46:30 jolan Exp $

COMMENT=	"managing meta-data of audio formats"
DISTNAME=	taglib-1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio devel
MASTER_SITES=	http://ktown.kde.org/~wheeler/files/src/

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
