# $OpenBSD: Makefile,v 1.3 2000/01/05 09:06:12 pjanzen Exp $
#

DISTNAME=       elm-2.4ME+66
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.ozone.fmi.fi/KEH/

MAINTAINER=	pjanzen@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/elm2.4.ME+.66

HAS_CONFIGURE=  Yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ENV+= PREFIX="${PREFIX}"
CONFIGURE_ARGS+= -S -d
SCRIPTS_ENV= OPSYS=${OPSYS}

post-configure:
	${CP} ${FILESDIR}/elm.mimecharsets ${WRKSRC}/bin

post-install:
	perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/nls/LANGS
	cd ${WRKSRC}/nls; ${MAKE} install
	if [ -f ${PREFIX}/lib/elm.mimetypes ] ; then \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib/elm.mimetypes-dist; \
	else \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
