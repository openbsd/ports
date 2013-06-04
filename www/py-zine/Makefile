# $OpenBSD: Makefile,v 1.12 2013/06/04 07:57:13 fgsch Exp $

COMMENT=		personal publishing platform / weblog engine

DISTNAME=		Zine-0.1.2
PKGNAME=		py-${DISTNAME:L}
REVISION=		6

CATEGORIES=		www

HOMEPAGE=		http://zine.pocoo.org/
MASTER_SITES=		${HOMEPAGE}releases/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${LOCALBASE} --python=${MODPY_BIN}
CONFIGURE_SCRIPT=	${MODPY_BIN} ${WRKSRC}/configure

DEPENDS=		databases/py-sqlalchemy \
			devel/py-tz \
			devel/py-babel \
			devel/py-html5lib \
			www/py-werkzeug \
			www/py-jinja2 \
			www/py-flup \
			textproc/py-lxml \
			textproc/py-pygments

BUILD_DEPENDS+=		${DEPENDS}
RUN_DEPENDS+=		${DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-zine
	${INSTALL_DATA}	${WRKSRC}/README ${PREFIX}/share/doc/py-zine
	${INSTALL_DATA}	${WRKSRC}/INSTALL ${PREFIX}/share/doc/py-zine

do-test:
	cd ${WRKSRC} && ./scripts/run-tests

.include <bsd.port.mk>
