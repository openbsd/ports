# $OpenBSD: Makefile,v 1.14 2002/12/23 00:37:52 pvalchev Exp $

COMMENT=	"analog clock for X11 w/appoint. reminder and mail notif"

PKGNAME=	rclock-2.7.6
DISTNAME=	rxvt-2.7.6
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		${MASTER_SITE_SUNSITE:=X11/terms/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/autoconf

ALL_TARGET=	clock

NO_REGRESS=	Yes

.include <bsd.port.mk>
