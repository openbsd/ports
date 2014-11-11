# $OpenBSD: Makefile,v 1.5 2014/11/11 14:24:39 dcoppa Exp $

COMMENT=	tool to programme a wide range of amateur radios

MODPY_EGG_VERSION= 0.4.1
DISTNAME=	chirp-${MODPY_EGG_VERSION}

CATEGORIES=	comms hamradio

HOMEPAGE=	http://chirp.danplanet.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://chirp.danplanet.com/download/${MODPY_EGG_VERSION}/

MODULES=	lang/python
COMMON_DEPS=	devel/py-serial \
		textproc/libxml,-python
BUILD_DEPENDS=	${COMMON_DEPS}
RUN_DEPENDS=	${COMMON_DEPS} \
		devel/desktop-file-utils \
		x11/py-gtk2

NO_TEST=	Yes

post-extract:
	perl -pi -e 's,/usr/share,${PREFIX}/share,' \
	    ${WRKSRC}/chirpui/mainapp.py

.include <bsd.port.mk>
