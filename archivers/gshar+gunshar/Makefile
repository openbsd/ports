# $OpenBSD: Makefile,v 1.5 1999/06/02 03:41:30 brad Exp $

DISTNAME=	sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g --disable-uucode --disable-nls

INSTALL_TARGET=	install install-man

post-patch:
	@${TOUCH} ${WRKSRC}/po/sharutils.pot

pre-configure:
	@${RM} ${WRKSRC}/doc/*.info*

post-install:
.for file in gshar gunshar
	@strip ${PREFIX}/bin/${file}
.endfor
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	 sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
.for info in remsync.info sharutils.info
	@install-info ${PREFIX}/info/${info} ${PREFIX}/info/dir
.endfor

.include <bsd.port.mk>
