# $OpenBSD: Makefile,v 1.39 2021/10/30 18:54:38 sthen Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.7.1
REVISION=	0
EPOCH=		0

CATEGORIES=	productivity

HOMEPAGE=	https://calcurse.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl m pthread

MASTER_SITES=	${HOMEPAGE}files/

RUN_DEPENDS=	www/py-httplib2${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gettext,-runtime

MODULES=	lang/python

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/calcurse
	${INSTALL_DATA} ${WRKSRC}/contrib/caldav/config.sample \
		${PREFIX}/share/examples/calcurse/caldav.config.sample

.include <bsd.port.mk>
