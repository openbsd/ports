# $OpenBSD: Makefile,v 1.3 2004/11/26 09:58:47 alek Exp $

COMMENT=	"remote administration software"

DISTNAME=      	radmind-1.3.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://rsug.itd.umich.edu/software/radmind/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rsug.itd.umich.edu/software/radmind/files/
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=--with-radminddir='$${${DESTDIRNAME}}/var/radmind'
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/libsnet

ALL_TARGET=	all man

.include <bsd.port.mk>
