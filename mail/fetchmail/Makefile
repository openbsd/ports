# OpenBSD makefile for:	fetchmail
# Version required:     4.3.0
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:29 joey Exp $
#

DISTNAME=       fetchmail-4.3.0
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.ccil.org/pub/esr/fetchmail/

MAINTAINER=	joey@OpenBSD.ORG

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-opie
CONFIGURE_ENV+= LDFLAGS="${CFLAGS}"
MAN1=		fetchmail.1

.if exists(/usr/lib/libkrb.a) && defined(MAKE_EBONES)
CONFIGURE_ARGS += --with-kerberos=/usr/include/kerberosIV
.endif

FDOC=   ${PREFIX}/share/doc/fetchmail

post-patch:
	@${CP} -f  /usr/include/md5.h ${WRKSRC}

post-install:
	install -d -m 555 -o ${DOCOWN} -g ${DOCGRP} ${FDOC}
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${FDOC}

.include <bsd.port.mk>
