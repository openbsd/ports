# $OpenBSD: Makefile,v 1.3 1999/04/01 06:20:02 brad Exp $

DISTNAME=       timidity-0.2i
CATEGORIES=     audio
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/ \
		http://www.goice.co.jp/member/mo/timidity/dist/
TIINS=          goemon.tgz
DISTFILES=      ${TIINS} ${DISTNAME}.tar.gz
LIB_DEPENDS=    Xm.1:${PORTSDIR}/x11/lesstif

MAINTAINER=     ports@openbsd.org

NO_CDROM=       "Uses copyrighted patches"

EXTRACT_ONLY=   ${DISTNAME}.tar.gz
INSTALL_TARGET= install.all

post-install:
	cd ${PREFIX}/lib/timidity && \
	tar zxf ${DISTDIR}/${TIINS} && \
	cp goemon.cfg goemon.cfg.bak && \
	sed 's=dir goemon=dir ${PREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	rm goemon.cfg.bak

.include <bsd.port.mk>
