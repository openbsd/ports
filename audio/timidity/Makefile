# New ports collection makefile for:    timidity
# Homepage: http://www.cgs.fi/~tt/timidity/
# Version required:     0.2i
# Original port by:	ache
# OpenBSD port by:	rys@glacid.com
#

DISTNAME=       timidity-0.2i
CATEGORIES=     audio
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/ \
		http://www.goice.co.jp/member/mo/timidity/dist/
TIINS=          goemon.tgz
DISTFILES=      ${TIINS} ${DISTNAME}.tar.gz
LIB_DEPENDS=    Xm.1.:${PORTSDIR}/x11/lesstif

MAINTAINER=     ache@FreeBSD.ORG

NO_CDROM=       "Uses copyrighted patches"

EXTRACT_ONLY=   ${DISTNAME}.tar.gz
INSTALL_TARGET= install.all
MAN1=           timidity.1

post-install:
	cd ${PREFIX}/lib/timidity && \
	tar zxf ${DISTDIR}/${TIINS} && \
	cp goemon.cfg goemon.cfg.bak && \
	sed 's=dir goemon=dir ${PREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	rm goemon.cfg.bak

.include <bsd.port.mk>
