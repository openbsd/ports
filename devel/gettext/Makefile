# $OpenBSD: Makefile,v 1.4 1999/04/18 20:30:05 brad Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $

DISTNAME=	gettext-0.10.35
CATEGORIES=	devel
MASTER_SITES=	ftp://alpha.gnu.ai.mit.edu/gnu/ \
		ftp://alpha.gnu.org/pub/gnu/

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

pre-configure:
	${RM} ${WRKSRC}/doc/gettext.info*

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/gettext.info ${PREFIX}/info/dir
	${INSTALL_DATA} ${WRKSRC}/misc/po-mode.el \
		${PREFIX}/share/gettext/po-mode.el
	${MKDIR} ${X11BASE}/share/locale

.include <bsd.port.mk>
