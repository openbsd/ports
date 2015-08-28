# $OpenBSD: Makefile,v 1.26 2015/08/28 14:22:14 naddy Exp $

COMMENT=	once-popular mail user agent

DISTNAME=	elm-2.4ME+66
REVISION=	1
CATEGORIES=	mail

MASTER_SITES=	ftp://ftp.ozone.fmi.fi/KEH/

MAINTAINER=	Paul Janzen <pjanzen@foatdi.net>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c termlib

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS+= -S -d
CONFIGURE_ENV+=	PREFIX='$${DESTDIR}${PREFIX}' \
		LOCALBASE='${LOCALBASE}'

WRKDIST=	${WRKDIR}/elm2.4.ME+.66

pre-configure:
	@cp ${FILESDIR}/config.sh ${WRKSRC}
	@cp ${FILESDIR}/elm.mimecharsets ${WRKSRC}/bin
	@sed -e s,/usr/local,${PREFIX}, ${WRKSRC}/nls/LANGS > ${WRKSRC}/nls/LANGS.new
	@mv ${WRKSRC}/nls/LANGS.new ${WRKSRC}/nls/LANGS

post-configure:
	@perl -pi.bak -e 's,\$${DESTDIR},,g;' \
		${WRKBUILD}/config.h ${WRKBUILD}/hdrs/sysdefs.h \
		${WRKBUILD}/utils/{checkalias,listalias,messages,printmail}

NO_TEST=	Yes

post-install:
	@cd ${WRKSRC}/nls; make install
	${INSTALL_DATA} \
		${FILESDIR}/elm.mimetypes ${PREFIX}/lib/elm.mimetypes-dist
	ln -f ${PREFIX}/man/man1/newmail.1 ${PREFIX}/man/man1/wnewmail.1
	ln -f ${PREFIX}/bin/frm ${PREFIX}/bin/nfrm
	ln -f ${PREFIX}/bin/newmail ${PREFIX}/bin/wnewmail

.include <bsd.port.mk>
