# $OpenBSD: Makefile,v 1.26 1999/12/18 19:51:57 fgsch Exp $

DISTNAME=       fetchmail-5.2.0
CATEGORIES=	mail
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

MAINTAINER=	fgsch@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-nls
.if exists(/usr/lib/libkrb.a) && defined(WITH_KERBEROS) && \
    ${WITH_KERBEROS:U} == YES
CONFIGURE_ARGS+= --with-kerberos=yes
.endif
.if exists(/usr/local/lib/libssl.a) && defined(WITH_SSL) && \
    ${WITH_SSL:U} == YES
CONFIGURE_ARGS+= --with-ssl=yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${PREFIX}/share/doc/fetchmail

.include <bsd.port.mk>
