# $OpenBSD: Makefile,v 1.3 1999/01/16 04:30:40 angelos Exp $
#

DISTNAME=       speak_freely-6.1e
CATEGORIES=     mbone audio security
MASTER_SITES=   http://www.fourmilab.ch/speakfree/unix/

MAINTAINER=     angelos@openbsd.org

UTILS=   sfspeaker sfmike sflwl
DEMNS=   sfecho sflwld
DDEMNS=  sfvod sfreflect
SFLIB=   ${PREFIX}/lib/speak_freely
MAN1=	 ${UTILS:S/$/.1/} ${DEMNS:S/$/.1/} ${DDEMNS:S/$/.1/}

do-install:
	if [ ! -d ${SFLIB} ]; then \
		install -d -o ${BINOWN} -g ${BINGRP} -m 755 ${SFLIB}; \
	fi
	cd ${WRKSRC}; \
	$(INSTALL_DATA) busy.au ring.au ${SFLIB}
	cd ${WRKSRC}; \
	for p in ${UTILS}; do \
		$(INSTALL_PROGRAM) $$p ${PREFIX}/bin; \
		$(INSTALL_MAN) $$p.1 ${PREFIX}/man/man1; \
	done;
	cd ${WRKSRC}; \
	for p in ${DEMNS}; do \
		$(INSTALL_PROGRAM) $$p ${PREFIX}/sbin; \
		$(INSTALL_MAN) $$p.1 ${PREFIX}/man/man1; \
	done;
	cd ${WRKSRC}; \
	for p in ${DDEMNS}; do \
		$(INSTALL_SCRIPT) $$p ${PREFIX}/sbin; \
		$(INSTALL_MAN) $$p.1 ${PREFIX}/man/man1; \
	done;

.include <bsd.port.mk>
