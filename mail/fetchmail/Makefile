# OpenBSD makefile for:	fetchmail
# Version required:     4.7.2
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.7 1998/12/28 05:12:46 fgsch Exp $
#

DISTNAME=       fetchmail-4.7.2
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.ccil.org/pub/esr/fetchmail/

MAINTAINER=	ports@OpenBSD.ORG

GNU_CONFIGURE=	yes
#CONFIGURE_ARGS+= --enable-opie
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
