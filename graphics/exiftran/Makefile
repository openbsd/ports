# $OpenBSD: Makefile,v 1.7 2017/11/05 17:28:00 ajacoutot Exp $

COMMENT=	command line utility to transform jpeg files

V=		2.14
DISTNAME=	fbida-${V}

PKGNAME=	exiftran-${V}

CATEGORIES=	graphics

HOMEPAGE=	https://www.kraxel.org/blog/linux/fbida/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exif jpeg m pixman-1

MASTER_SITES=	http://www.kraxel.org/releases/fbida/

LIB_DEPENDS=	graphics/libexif \
		graphics/jpeg

NO_TEST=	Yes

post-patch:
	mkdir -p ${WRKSRC}/build/exiftran ${WRKSRC}/build/thumbnail.cgi
	cp ${FILESDIR}/Makefile ${WRKSRC}/Makefile
	cp ${FILESDIR}/Makefile.exiftran ${WRKSRC}/build/exiftran/Makefile
	cp ${FILESDIR}/Makefile.thumbnail.cgi \
		${WRKSRC}/build/thumbnail.cgi/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/exiftran/exiftran \
		${PREFIX}/bin/exiftran
	${INSTALL_PROGRAM} ${WRKBUILD}/build/thumbnail.cgi/thumbnail.cgi \
		${PREFIX}/bin/thumbnail.cgi
	${INSTALL_MAN} ${WRKSRC}/man/exiftran.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
