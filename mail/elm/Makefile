# New ports collection makefile for:    elm
# See also: http://www.ozone.fmi.fi/KEH/
# Version required:     2.4.25.ME+32
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/18 04:09:46 gene Exp $
# Id: Makefile,v 1.41 1997/06/22 07:28:49 ache Exp $
#

DISTNAME=       elm-2.4ME+32
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.ozone.fmi.fi/KEH/ \
		ftp://ftp.funet.fi/pub/unix/mail/elm/elm-2.4ME+/ \
		ftp://ftp.ibp.fr/pub/unix/mail/elm-me/

MAINTAINER=	gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/elm2.4.ME+.32
MAN1=           answer.1 checkalias.1 elm.1 elmalias.1 fastmail.1 \
		listalias.1 messages.1 newalias.1 printmail.1 readmsg.1

HAS_CONFIGURE=  Yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ENV+= PREFIX="${PREFIX}"
CONFIGURE_ARGS+= -S
SCRIPTS_ENV= OPSYS=${OPSYS}

post-install:
	cd ${WRKSRC}/nls; ${MAKE} install
	if [ -f ${PREFIX}/lib/elm.mimetypes ] ; then \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib/elm.mimetypes-dist; \
	else \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
