# $OpenBSD: Makefile,v 1.6 1999/09/06 17:15:07 brad Exp $

DISTNAME=	sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

NEED_VERSION=	1.114

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g --disable-uucode --disable-nls

INSTALL_TARGET=	install install-man

post-patch:
	@${TOUCH} ${WRKSRC}/po/sharutils.pot

pre-configure:
	@${RM} -f ${WRKSRC}/doc/*.info*

post-install:
.for file in gshar gunshar
	@${STRIP} ${PREFIX}/bin/${file}
.endfor
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	 ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
.for info in remsync.info sharutils.info
	@install-info ${PREFIX}/info/${info} ${PREFIX}/info/dir
.endfor

.include <bsd.port.mk>
