# $OpenBSD: Makefile,v 1.8 2000/02/13 08:07:42 turan Exp $

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
PERMIT_PKG_CDROM=	NO
PERMIT_PKG_FTP=		NO
PERMIT_DISTF_CDROM=	NO
PERMIT_DISTF_FTP=	NO

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
