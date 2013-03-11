# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:52 espie Exp $

COMMENT=	command line utility to transform jpeg files

V=		2.08
DISTNAME=	fbida-${V}
REVISION=	0

PKGNAME=	exiftran-${V}

CATEGORIES=	graphics

HOMEPAGE=	http://www.kraxel.org/blog/linux/fbida/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exif jpeg m

MASTER_SITES=	http://www.kraxel.org/releases/fbida/

LIB_DEPENDS=	graphics/libexif \
		graphics/jpeg

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
	${INSTALL_MAN} ${WRKSRC}/exiftran.man ${PREFIX}/man/man1/exiftran.1

.include <bsd.port.mk>
