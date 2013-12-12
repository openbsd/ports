# $OpenBSD: Makefile,v 1.41 2013/12/12 14:11:36 dcoppa Exp $

COMMENT=	SOCKS client and server

DISTNAME=	dante-1.4.0
CATEGORIES=	security

SHARED_LIBS=	dsocks	1.2 \
		socks	1.2
MODGNU_SHARED_LIBS=dsocks	'-all-dynamic' \
		socks		''

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/ \
		ftp://ftp.inet.no/pub/socks/old/

HOMEPAGE=	http://www.inet.no/dante/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# BSD/CMU
PERMIT_PACKAGE_CDROM=Yes

WANTLIB=	c m wrap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --without-ldap \
		--without-pam \
		--without-sasl \
		--without-upnp

MODGNU_CONFIG_GUESS_DIRS+= ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/socksify.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/SOCKS4.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/rfc* ${PREFIX}/share/doc/dante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
