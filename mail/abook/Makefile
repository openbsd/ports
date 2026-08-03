COMMENT=		addressbook program with mutt support

DISTNAME=		abook-0.6.2
CATEGORIES=		mail

WRKDIST=	${WRKDIR}

HOMEPAGE=		https://abook.sourceforge.net/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  c curses iconv intl readline

SITES=			https://abook.sourceforge.net/devel/

LIB_DEPENDS=		converters/libiconv \
			devel/gettext,-runtime

CONFIGURE_STYLE=	autoreconf

BUILD_DEPENDS=		devel/gettext,-tools
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

EXAMPLEDIR=		${PREFIX}/share/examples/abook/
DOCSDIR=	${PREFIX}/share/doc/abook/

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/sample.abookrc ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/{BUGS,ChangeLog,FAQ,README,TODO} ${DOCSDIR}

.include <bsd.port.mk>
