# $OpenBSD: Makefile,v 1.66 2001/06/23 05:29:57 fgsch Exp $

COMMENT=	"mail retrieval utility for POP2, POP3, KPOP, IMAP and more"

DISTNAME=	fetchmail-5.8.8
CATEGORIES=	mail
NEED_VERSION=	1.402
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

HOMEPAGE=	http://www.tuxedo.org/~esr/fetchmail/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls --enable-inet6 --with-ssl

FLAVORS=	kerberos
FLAVOR?=

.if ${FLAVOR:L:Mkerberos}
CONFIGURE_ARGS+= --with-kerberos
.endif

DOCS=	FAQ NOTES FEATURES README COPYING fetchmail-FAQ.html \
	fetchmail-features.html design-notes.html todo.html

pre-patch:
	@sed -e "s|@PREFIX@|${LOCALBASE}|" \
	  ${FILESDIR}/fetchmailconf > ${WRKDIR}/fetchmailconf
	@tbl ${WRKSRC}/fetchmail.man > ${WRKSRC}/fetchmail.tbl; \
	  cp -f ${WRKSRC}/fetchmail.tbl ${WRKSRC}/fetchmail.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	@cd ${PREFIX}/man/man1 && ln -sf fetchmail.1 fetchmailconf.1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/fetchmail
	${INSTALL_SCRIPT} ${WRKSRC}/fetchmailconf \
	  ${PREFIX}/libexec/fetchmailconf.bin
	${INSTALL_SCRIPT} ${WRKDIR}/fetchmailconf ${PREFIX}/bin

.include <bsd.port.mk>
