# $OpenBSD: Makefile,v 1.24 2007/09/15 21:23:42 merdely Exp $

COMMENT=	setup X11 fonts for russian language (koi8-r)

DISTNAME=	xcyrillic-2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	russian x11

MASTER_SITES=	ftp://ftp.openbsd.ru/pub/X11/cyrillic/ \
		ftp://vell.nsc.ru/pub/X11/cyrillic/ \
		ftp://ftp.styx.org/users/ww/cyrillic/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME}/fonts
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKBUILD}/../LICENSE.txt \
		${PREFIX}/lib/X11/fonts/xcyrillic
	cd ${PREFIX}/lib/X11/fonts/xcyrillic/misc && \
		mv fonts.alias fonts.alias-xcyrillic

.include <bsd.port.mk>
