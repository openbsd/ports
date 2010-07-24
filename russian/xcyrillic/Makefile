# $OpenBSD: Makefile,v 1.26 2010/07/24 17:36:17 ajacoutot Exp $

COMMENT=	setup X11 fonts for russian language (koi8-r)

DISTNAME=	xcyrillic-2.0
REVISION=	0
CATEGORIES=	russian x11

MASTER_SITES=	ftp://ftp.openbsd.ru/pub/X11/cyrillic/ \
		ftp://vell.nsc.ru/pub/X11/cyrillic/ \
		ftp://ftp.styx.org/users/ww/cyrillic/

# MIT-like
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
