# $OpenBSD: Makefile,v 1.21 1999/09/22 16:32:37 fgsch Exp $

DISTNAME=       fetchmail-5.1.0
CATEGORIES=	mail
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

MAINTAINER=	fgsch@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-nls
.if exists(/usr/lib/libkrb.a) && defined(MAKE_EBONES)
CONFIGURE_ARGS+= --with-kerberos=yes
.endif
CONFIGURE_ENV=	LDFLAGS="${CFLAGS}"

FDOC=   ${PREFIX}/share/doc/fetchmail

post-install:
	install -d -m 555 -o ${DOCOWN} -g ${DOCGRP} ${FDOC}
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${FDOC}

.include <bsd.port.mk>
