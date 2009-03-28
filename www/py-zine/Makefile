# $OpenBSD: Makefile,v 1.3 2009/03/28 18:12:50 naddy Exp $

COMMENT=		personal publishing platform / weblog engine

DISTNAME=		Zine-0.1.2
PKGNAME=		py-${DISTNAME:L}p0

CATEGORIES=		www

HOMEPAGE=		http://zine.pocoo.org/
MASTER_SITES=		${HOMEPAGE}releases/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${LOCALBASE} --python=${MODPY_BIN}
CONFIGURE_SCRIPT=	${MODPY_BIN} ${WRKSRC}/configure

LIB_DEPENDS=		::databases/py-sqlalchemy \
			::devel/py-simplejson \
			::devel/py-tz \
			::devel/py-babel \
			::devel/py-html5lib \
			::www/py-werkzeug \
			::www/py-jinja2 \
			::www/py-flup \
			::textproc/py-lxml \
			::textproc/py-pygments

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-zine
	${INSTALL_DATA}	${WRKSRC}/README ${PREFIX}/share/doc/py-zine
	${INSTALL_DATA}	${WRKSRC}/INSTALL ${PREFIX}/share/doc/py-zine

do-regress:
	cd ${WRKSRC} && ./scripts/run-tests

.include <bsd.port.mk>
