# $OpenBSD: Makefile,v 1.4 1999/09/06 18:33:22 brad Exp $

DISTNAME=       timidity-0.2i
CATEGORIES=     audio
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/ \
		http://www.goice.co.jp/member/mo/timidity/dist/
NO_CDROM=       "Uses copyrighted patches"
TIINS=          goemon.tgz
DISTFILES=      ${TIINS} ${DISTNAME}.tar.gz
EXTRACT_ONLY=   ${DISTNAME}.tar.gz

NEED_VERSION=	1.91

MAINTAINER=     ports@openbsd.org

USE_MOTIF=	yes

INSTALL_TARGET= install.all

post-install:
	@cd ${PREFIX}/lib/timidity && \
	${TAR} -zxf ${DISTDIR}/${TIINS} && \
	${CP} goemon.cfg goemon.cfg.bak && \
	${SED} 's=dir goemon=dir ${PREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	${RM} -f goemon.cfg.bak

.include <bsd.port.mk>
