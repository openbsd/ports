# $OpenBSD: Makefile,v 1.28 2013/06/13 08:47:46 benoit Exp $

COMMENT=	web proxy with advanced filtering capabilities

V=		3.0.21
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www

HOMEPAGE=	http://www.privoxy.org/

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcre pcreposix pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz

NO_TEST=	Yes

MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=	CPPFLAGS="-Dunix -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader

# make install is broken
do-install:
	@${SUBST_CMD} ${WRKSRC}/config
	${INSTALL_PROGRAM} ${WRKSRC}/privoxy ${PREFIX}/sbin
	cd ${WRKSRC}/tools && ${INSTALL_SCRIPT} * ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/privoxy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/privoxy
.for _f in AUTHORS ChangeLog README LICENSE
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/privoxy
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/default.filter ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/user.filter ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/*.action ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/privoxy/templates
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/examples/privoxy/templates

.include <bsd.port.mk>
