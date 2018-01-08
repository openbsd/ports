# $OpenBSD: Makefile,v 1.10 2018/01/08 01:37:02 abieber Exp $

COMMENT=	tool to programme a wide range of amateur radios

MODPY_EGG_VERSION= 20180104
DISTNAME=	chirp-daily-${MODPY_EGG_VERSION}
PKGNAME=	chirp-${MODPY_EGG_VERSION}

CATEGORIES=	comms hamradio

HOMEPAGE=	http://chirp.danplanet.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://trac.chirp.danplanet.com/chirp_daily/daily-${MODPY_EGG_VERSION}/ \
		https://deftly.net/dist/

MODULES=	lang/python
COMMON_DEPS=	devel/py-serial \
		textproc/libxml,-python
BUILD_DEPENDS=	${COMMON_DEPS}
RUN_DEPENDS=	${COMMON_DEPS} \
		devel/desktop-file-utils \
		devel/py-suds \
		x11/py-gtk2

NO_TEST=	Yes

post-extract:
	sed -i 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/chirp/ui/mainapp.py

.include <bsd.port.mk>
