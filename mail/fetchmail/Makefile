# OpenBSD makefile for:	fetchmail
# Version required:     4.5.4
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.6 1998/08/01 02:01:55 marc Exp $
#

DISTNAME=       fetchmail-4.5.4
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
