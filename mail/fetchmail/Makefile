# $OpenBSD: Makefile,v 1.54 2000/08/26 18:12:53 brad Exp $

DISTNAME=	fetchmail-5.5.1
CATEGORIES=	mail
NEED_VERSION=	1.310
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

HOMEPAGE=	http://www.tuxedo.org/~esr/fetchmail/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--disable-nls --enable-inet6

FLAVORS=	kerberos ssl
FLAVOR?=

.if ${FLAVOR:L} == "kerberos"
CONFIGURE_ARGS+= --with-kerberos
.endif
.if ${FLAVOR:L} == "ssl"
CONFIGURE_ARGS+= --with-ssl
.endif

pre-patch:
	@sed -e "s|@PREFIX@|${LOCALBASE}|" \
	  ${FILESDIR}/fetchmailconf > ${WRKDIR}/fetchmailconf
	@tbl ${WRKSRC}/fetchmail.man > ${WRKSRC}/fetchmail.tbl; \
	  cp -f ${WRKSRC}/fetchmail.tbl ${WRKSRC}/fetchmail.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	@cd ${PREFIX}/man/man1 && ln -sf fetchmail.1 fetchmailconf.1
	cd ${WRKSRC} && ${INSTALL_DATA} \
	  sample.rcfile FAQ NOTES FEATURES README COPYING \
	  fetchmail-FAQ.html fetchmail-features.html \
	  design-notes.html ${PREFIX}/share/doc/fetchmail
	${INSTALL_SCRIPT} ${WRKSRC}/fetchmailconf \
	  ${PREFIX}/libexec/fetchmailconf.bin
	${INSTALL_SCRIPT} ${WRKDIR}/fetchmailconf ${PREFIX}/bin

.include <bsd.port.mk>
