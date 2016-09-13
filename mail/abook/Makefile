# $OpenBSD: Makefile,v 1.33 2016/09/13 15:35:10 naddy Exp $

COMMENT=		addressbook program with mutt support

DISTNAME=		abook-0.6.1
CATEGORIES=		mail

HOMEPAGE=		http://abook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=		c iconv intl ncursesw readline

MASTER_SITES=		http://abook.sourceforge.net/devel/

LIB_DEPENDS=		converters/libiconv \
			devel/gettext

CONFIGURE_STYLE=	automake

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext-tools
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
