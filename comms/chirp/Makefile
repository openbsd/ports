# $OpenBSD: Makefile,v 1.16 2020/06/08 09:07:33 sthen Exp $

COMMENT=	tool to programme a wide range of amateur radios

MODPY_EGG_VERSION= 20200603
DISTNAME=	chirp-daily-${MODPY_EGG_VERSION}
PKGNAME=	chirp-${MODPY_EGG_VERSION}

CATEGORIES=	comms hamradio

HOMEPAGE=	https://chirp.danplanet.com/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://trac.chirp.danplanet.com/chirp_daily/daily-${MODPY_EGG_VERSION}/

MODULES=	lang/python
COMMON_DEPS=	devel/py-serial
BUILD_DEPENDS=	${COMMON_DEPS}
RUN_DEPENDS=	${COMMON_DEPS} \
		devel/desktop-file-utils \
		devel/py-future \
		devel/py-suds \
		x11/py-gtk2

NO_TEST=	Yes

post-extract:
	sed -i 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/chirp/ui/mainapp.py
	rm ${WRKSRC}/chirp/drivers/generic_xml*

.include <bsd.port.mk>
