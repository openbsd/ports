# $OpenBSD: Makefile,v 1.36 2019/07/12 20:51:00 sthen Exp $

COMMENT=	web proxy with advanced filtering capabilities

V=		3.0.26
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www
REVISION=	0

HOMEPAGE=	http://www.privoxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pcre pcreposix pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz

NO_TEST=	Yes

MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
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
