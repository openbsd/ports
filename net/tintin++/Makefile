# $OpenBSD: Makefile,v 1.19 2014/01/04 07:51:53 bcallah Exp $ 

COMMENT=	client program for playing muds with advanced features
DISTNAME=       tintin-2.01.0
CATEGORIES=     net games

HOMEPAGE=       http://tintin.sourceforge.net/
MAINTAINER=	Ted Roby <troby@freeshell.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcre pthread util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tintin/}

LIB_DEPENDS=    devel/pcre

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
              		LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=     INCS=-I${LOCALBASE}/include

WRKDIST=	${WRKDIR}/tt/src
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tintin++
	${INSTALL_DATA} ${WRKDIR}/tt/docs/chat_protocol.txt ${PREFIX}/share/doc/tintin++
	${INSTALL_DATA} ${WRKDIR}/tt/docs/tintin19.txt ${PREFIX}/share/doc/tintin++
	${INSTALL_PROGRAM} ${WRKSRC}/tt++ ${PREFIX}/bin

.include <bsd.port.mk>
