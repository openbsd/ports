# OpenBSD makefile for:    gshar+gunshar
# Version required:     4.2
# Date created:         06 November 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 18:41:45 joey Exp $
#

DISTNAME=       sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=   ${MASTER_SITE_GNU}

GNU_CONFIGURE=  yes
CONFIGURE_ARGS= --program-prefix=g --disable-uucode
INSTALL_TARGET= install install-man
MAN1=		gshar.1 gunshar.1

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
