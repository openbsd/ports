# $OpenBSD: Makefile,v 1.1.1.1 2005/06/29 21:15:24 sturm Exp $

COMMENT=	"proxy/masquerading daemon for the SIP protocol"

DISTNAME=	siproxd-0.5.11
CATEGORIES=	telephony net

HOMEPAGE=	http://siproxd.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> 

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=siproxd/}

CONFIGURE_STYLE=gnu

LIB_DEPENDS=    osip2,osipparser2::telephony/libosip2

DOCDIR=		${PREFIX}/share/doc/siproxd
EXDIR=		${PREFIX}/share/examples/siproxd

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/FAQ ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/KNOWN_BUGS ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/siproxd.conf.example ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/siproxd_passwd.cfg ${EXDIR}

.include <bsd.port.mk>
