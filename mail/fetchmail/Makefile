# $OpenBSD: Makefile,v 1.14 1999/04/30 07:46:22 fgsch Exp $

DISTNAME=       fetchmail-5.0.2
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.ccil.org/pub/esr/fetchmail/

MAINTAINER=	ports@OpenBSD.ORG

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-nls
.if exists(/usr/lib/libkrb.a) && defined(MAKE_EBONES)
CONFIGURE_ARGS += --with-kerberos=/usr/include/kerberosIV
.endif
CONFIGURE_ENV+= ${SETENV} LDFLAGS="${CFLAGS}"

FDOC=   ${PREFIX}/share/doc/fetchmail

post-install:
	install -d -m 555 -o ${DOCOWN} -g ${DOCGRP} ${FDOC}
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${FDOC}

.include <bsd.port.mk>
