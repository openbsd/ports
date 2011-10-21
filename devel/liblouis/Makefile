# $OpenBSD: Makefile,v 1.2 2011/10/21 13:01:11 ajacoutot Exp $

COMMENT=	braille translator and back-translator

DISTNAME=	liblouis-2.3.0

SHARED_LIBS +=  louis                0.0      # 4.3

CATEGORIES=	devel

HOMEPAGE=	http://code.google.com/p/liblouis/

# GPLv3 - LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	http://liblouis.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	devel/help2man

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-packager="OpenBSD Ports"

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/louis
	${INSTALL_DATA} ${WRKSRC}/python/louis/__init__.py \
		${WRKINST}/${MODPY_SITEPKG}/louis
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
