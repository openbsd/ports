# $OpenBSD: Makefile,v 1.10 2000/02/16 10:52:08 espie Exp $

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

LICENSE_TYPE=		"GPL NONE"
PERMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	NO
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	NO

USE_MOTIF=	yes

INSTALL_TARGET= install.all

post-install:
	@cd ${PREFIX}/lib/timidity && \
	${TAR} -zxf ${DISTDIR}/${TIINS} && \
	cp goemon.cfg goemon.cfg.bak && \
	sed 's=dir goemon=dir ${PREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	rm -f goemon.cfg.bak

.include <bsd.port.mk>
