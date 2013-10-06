# $OpenBSD: Makefile,v 1.13 2013/10/06 19:12:09 lteo Exp $

SHARED_ONLY=	Yes
COMMENT=	proxy/masquerading daemon for the SIP protocol

DISTNAME=	siproxd-0.8.1
REVISION=	4
CATEGORIES=	telephony net

HOMEPAGE=	http://siproxd.sourceforge.net/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c osip2 osipparser2 pthread ltdl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=siproxd/}

USE_LIBTOOL=	gnu

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${PREFIX}/lib"

LIB_DEPENDS=	telephony/libosip2 \
		devel/libtool,-ltdl

DOCDIR=		${PREFIX}/share/doc/siproxd
EXDIR=		${PREFIX}/share/examples/siproxd
SUBST_VARS=	PREFIX

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/siproxd.conf.example

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/FAQ ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/KNOWN_BUGS ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/siproxd.conf.example ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/siproxd_passwd.cfg ${EXDIR}
	rm ${PREFIX}/lib/siproxd/plugin_*.a ${PREFIX}/lib/siproxd/plugin_*.la

.include <bsd.port.mk>
