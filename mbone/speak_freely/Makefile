# $OpenBSD: Makefile,v 1.5 1999/09/21 07:09:56 turan Exp $

BROKEN=		"sources unavailible"

DISTNAME=       speak_freely-7.0
CATEGORIES=     mbone audio security
MASTER_SITES=   http://www.fourmilab.ch/speakfree/unix/

MAINTAINER=     angelos@openbsd.org

LIB_DEPENDS=	gsm.1.0:${PORTSDIR}/audio/gsm

UTILS=   sfspeaker sfmike sflwl
DEMNS=   sfecho sflwld
DDEMNS=  sfvod sfreflect
SFLIB=   ${PREFIX}/lib/speak_freely

do-install:
	@if [ ! -d ${SFLIB} ]; then \
		install -d -o ${BINOWN} -g ${BINGRP} -m 755 ${SFLIB}; \
	fi
	@$(INSTALL_DATA) ${WRKSRC}/busy.au ${WRKSRC}/ring.au ${SFLIB}
	@for p in ${UTILS}; do \
		$(INSTALL_PROGRAM) ${WRKSRC}/$$p ${PREFIX}/bin; \
		$(INSTALL_MAN) ${WRKSRC}/$$p.1 ${PREFIX}/man/man1; \
	done;
	@for p in ${DEMNS}; do \
		$(INSTALL_PROGRAM) ${WRKSRC}/$$p ${PREFIX}/sbin; \
		$(INSTALL_MAN) ${WRKSRC}/$$p.1 ${PREFIX}/man/man1; \
	done;
	@for p in ${DDEMNS}; do \
		$(INSTALL_SCRIPT) ${WRKSRC}/$$p ${PREFIX}/sbin; \
		$(INSTALL_MAN) ${WRKSRC}/$$p.1 ${PREFIX}/man/man1; \
	done;

.include <bsd.port.mk>
