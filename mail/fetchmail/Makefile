COMMENT=	mail retrieval utility for POP2, POP3, KPOP, IMAP and more

DISTNAME=	fetchmail-6.6.1
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	mail
SITES=		${SITE_SOURCEFORGE:=fetchmail/}

HOMEPAGE=	https://www.fetchmail.info/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto iconv intl pthread ssl

MODULES=		lang/python

MODPY_ADJ_FILES=	fetchmailconf.py
BUILD_DEPENDS=		devel/bison
LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
CFLAGS +=		-I${LOCALBASE}/include
PORTHOME=		${WRKDIR}
CONFIGURE_ENV=		PYTHON=: YACC="bison -y"
CONFIGURE_ARGS=		--with-ssl \
			--enable-NTLM

post-install:
	cd ${PREFIX}/man/man1; ln -sf fetchmail.1 fetchmailconf.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING FAQ FEATURES NEWS NOTES \
		README* COPYING *.html ${PREFIX}/share/doc/fetchmail/
	${INSTALL_SCRIPT} ${WRKSRC}/fetchmailconf.py \
		${PREFIX}/bin/fetchmailconf

.include <bsd.port.mk>
