# $OpenBSD: Makefile,v 1.30 1999/12/25 07:48:19 brad Exp $

DISTNAME=       fetchmail-5.2.1
CATEGORIES=	mail
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

MAINTAINER=	fgsch@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-nls
.if defined(WITH_KERBEROS) && ${WITH_KERBEROS:U} == YES
CONFIGURE_ARGS+= --with-kerberos
.endif
.if defined(WITH_SSL) && ${WITH_SSL:U} == YES
CONFIGURE_ARGS+= --with-ssl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${PREFIX}/share/doc/fetchmail

.include <bsd.port.mk>
