# $OpenBSD: Makefile,v 1.30 2013/03/11 11:41:31 espie Exp $

COMMENT=	multi-window tail(1) utility

DISTNAME=	multitail-5.2.9
CATEGORIES=	sysutils

HOMEPAGE=	http://www.vanheusden.com/multitail/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WANTLIB=	c m ncurses util panel

NO_TEST=	Yes

MAKE_FLAGS=	CC='${CC}' \
		CFLAGS='${CFLAGS} -funsigned-char -DVERSION=\"$${VERSION}\" \
			-DCONFIG_FILE=\"${SYSCONFDIR}/multitail.conf\"' \
		LDFLAGS='-lpanel -lncurses -lutil -lm'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/multitail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/multitail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/multitail
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${WRKSRC}/manual.html \
		${PREFIX}/share/doc/multitail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/multitail
	${INSTALL_DATA} ${WRKSRC}/multitail.conf \
		${PREFIX}/share/examples/multitail
	@perl -i -pe \
		's:/etc/multitail/:${TRUEPREFIX}/share/examples/multitail/:' \
		${PREFIX}/share/examples/multitail/multitail.conf
	${INSTALL_DATA} ${WRKSRC}/convert-* ${WRKSRC}/colors-* \
		${PREFIX}/share/examples/multitail

.include <bsd.port.mk>
