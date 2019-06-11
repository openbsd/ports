# $OpenBSD: Makefile,v 1.40 2019/06/11 19:28:45 ajacoutot Exp $

COMMENT=		addressbook program with mutt support

DISTNAME=		abook-0.6.1
REVISION=		3
CATEGORIES=		mail

HOMEPAGE=		http://abook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses iconv intl readline

MASTER_SITES=		http://abook.sourceforge.net/devel/

LIB_DEPENDS=		converters/libiconv \
			devel/gettext,-runtime

CONFIGURE_STYLE=	autoreconf

BUILD_DEPENDS=		devel/gettext,-tools \
			archivers/xz
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14

EXAMPLEDIR=		${PREFIX}/share/examples/abook/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/sample.abookrc ${EXAMPLEDIR}

.include <bsd.port.mk>
