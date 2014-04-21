# $OpenBSD: Makefile,v 1.143 2014/04/21 22:24:49 ajacoutot Exp $

COMMENT=	mail retrieval utility for POP2, POP3, KPOP, IMAP and more

DISTNAME=	fetchmail-6.3.24
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_BERLIOS:=fetchmail/}
REVISION=	5

HOMEPAGE=	http://www.fetchmail.info/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	fetchmailconf.py
SUBST_VARS+=		MODPY_LIBDIR
BUILD_DEPENDS=		devel/bison

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CFLAGS=			-I${LOCALBASE}/include
CONFIGURE_ENV=		PYTHON=: YACC="bison -y"
CONFIGURE_ARGS=		--with-ssl \
			--enable-NTLM

USE_GROFF=		Yes# uses www.tmac for .URL tags

EXTRACT_SUFX=		.tar.bz2

DOCS=			FAQ NOTES FEATURES README COPYING fetchmail-FAQ.html \
			fetchmail-features.html design-notes.html todo.html

# Remove those so they get rebuild. Fixes problems with gcc2.
post-extract:
	@rm -f ${WRKSRC}/rcfile_y.[ch]

pre-patch:
	${SUBST_CMD} -c ${FILESDIR}/fetchmailconf ${WRKDIR}/fetchmailconf
	@tbl ${WRKSRC}/fetchmail.man > ${WRKSRC}/fetchmail.tbl && \
		cp -f ${WRKSRC}/fetchmail.tbl ${WRKSRC}/fetchmail.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	@cd ${PREFIX}/man/man1 && ln -sf fetchmail.1 fetchmailconf.1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/fetchmail
	${INSTALL_SCRIPT} ${WRKSRC}/fetchmailconf.py \
		${PREFIX}/libexec/fetchmailconf.bin
	${INSTALL_SCRIPT} ${WRKDIR}/fetchmailconf ${PREFIX}/bin

.include <bsd.port.mk>
