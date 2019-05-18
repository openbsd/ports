# $OpenBSD: Makefile,v 1.38 2019/05/18 12:13:33 naddy Exp $

COMMENT=		addressbook program with mutt support

DISTNAME=		abook-0.6.1
REVISION=		2
CATEGORIES=		mail

HOMEPAGE=		http://abook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses iconv intl readline

MASTER_SITES=		http://abook.sourceforge.net/devel/

LIB_DEPENDS=		converters/libiconv \
			devel/gettext

CONFIGURE_STYLE=	autoreconf

BUILD_DEPENDS=		devel/gettext-tools
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14

EXAMPLEDIR=		${PREFIX}/share/examples/abook/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/sample.abookrc ${EXAMPLEDIR}

.include <bsd.port.mk>
