# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:35 espie Exp $

BROKEN= compile errers
#motif_i.c:53: Xm/Xm.h: No such file or directory
#motif_i.c:54: Xm/Form.h: No such file or directory
#motif_i.c:55: Xm/Text.h: No such file or directory
#motif_i.c:56: Xm/PushB.h: No such file or directory
#motif_i.c:57: Xm/Label.h: No such file or directory
#motif_i.c:58: Xm/Scale.h: No such file or directory
#motif_i.c:59: Xm/List.h: No such file or directory
#motif_i.c:60: Xm/Frame.h: No such file or directory
#motif_i.c:61: Xm/RowColumn.h: No such file or directory
#motif_i.c:62: Xm/CascadeB.h: No such file or directory
#motif_i.c:63: Xm/FileSB.h: No such file or directory
#motif_i.c:64: Xm/FileSB.h: No such file or directory
#motif_i.c:65: Xm/ToggleB.h: No such file or directory

DISTNAME=       timidity-0.2i
CATEGORIES=     audio
NEED_VERSION=	1.91
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/ \
		http://www.goice.co.jp/member/mo/timidity/dist/
NO_CDROM=       "Uses copyrighted patches"
TIINS=          goemon.tgz
DISTFILES=      ${TIINS} ${DISTNAME}.tar.gz
EXTRACT_ONLY=   ${DISTNAME}.tar.gz


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
