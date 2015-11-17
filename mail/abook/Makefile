# $OpenBSD: Makefile,v 1.32 2015/11/17 23:21:04 sthen Exp $

COMMENT=		addressbook program with mutt support

DISTNAME=		abook-0.6.1
CATEGORIES=		mail

HOMEPAGE=		http://abook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=		c ncursesw readline

MASTER_SITES=		http://abook.sourceforge.net/devel/

MODULES=		devel/gettext \
			converters/libiconv

CONFIGURE_STYLE=	automake

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
AUTOCONF_VERSION= 	2.69
AUTOMAKE_VERSION= 	1.14

EXAMPLEDIR=		${PREFIX}/share/examples/abook/

pre-configure:
	@cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -i

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/sample.abookrc ${EXAMPLEDIR}

.include <bsd.port.mk>
