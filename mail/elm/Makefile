# $OpenBSD: Makefile,v 1.19 2006/11/03 17:01:10 espie Exp $

COMMENT=	"once-popular mail user agent"

DISTNAME=	elm-2.4ME+66
CATEGORIES=	mail

MASTER_SITES=	ftp://ftp.ozone.fmi.fi/KEH/

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termlib

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS+= -S -d
CONFIGURE_ENV+=	PREFIX='$${DESTDIR}${PREFIX}'

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

NO_REGRESS=	Yes

post-install:
	@cd ${WRKSRC}/nls; make install
	${INSTALL_DATA} \
		${FILESDIR}/elm.mimetypes ${PREFIX}/lib/elm.mimetypes-dist
	ln -f ${PREFIX}/man/cat1/newmail.0 ${PREFIX}/man/cat1/wnewmail.0
	ln -f ${PREFIX}/bin/frm ${PREFIX}/bin/nfrm
	ln -f ${PREFIX}/bin/newmail ${PREFIX}/bin/wnewmail

.include <bsd.port.mk>
