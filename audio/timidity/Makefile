# $OpenBSD: Makefile,v 1.15 2001/01/05 16:35:58 brad Exp $

DISTNAME=       timidity-0.2i
CATEGORIES=     audio
NEED_VERSION=	1.336
MASTER_SITES= 	http://www.goice.co.jp/member/mo/timidity/dist/
MASTER_SITES0=  ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/
TIINS=          goemon.tgz
DISTFILES=      ${TIINS}:0 ${DISTNAME}.tar.gz
EXTRACT_ONLY=   ${DISTNAME}.tar.gz

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

USE_MOTIF=	Yes

INSTALL_TARGET= install.all
FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}

post-install:
	@cd ${PREFIX}/lib/timidity && \
	tar zxf ${DISTDIR}/${TIINS} && \
	cp goemon.cfg goemon.cfg.bak && \
	sed 's=dir goemon=dir ${TRUEPREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	rm -f goemon.cfg.bak

.include <bsd.port.mk>
