# $OpenBSD: Makefile,v 1.4 1999/04/01 02:16:37 brad Exp $

DISTNAME=       sharutils-4.2
CATEGORIES=	archivers

MAINTAINER=	ports@openbsd.org

MASTER_SITES=   ${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=sharutils

GNU_CONFIGURE=  yes
CONFIGURE_ARGS= --program-prefix=g --disable-uucode
INSTALL_TARGET= install install-man

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

post-install:
.for file in gshar gunshar
	strip ${PREFIX}/bin/${file}
.endfor
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
.for info in remsync.info sharutils.info
	install-info ${PREFIX}/info/${info} ${PREFIX}/info/dir
.endfor

.include <bsd.port.mk>
