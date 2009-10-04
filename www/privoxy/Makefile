# $OpenBSD: Makefile,v 1.17 2009/10/04 19:27:21 benoit Exp $

COMMENT=	web proxy with advanced filtering capabilities

V=		3.0.12
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www

HOMEPAGE=	http://www.privoxy.org/

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz

NO_REGRESS=	Yes

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	pcre,pcreposix::devel/pcre

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=	CPPFLAGS="-Dunix -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader

# make install is broken
do-install:
	@${SUBST_CMD} ${WRKSRC}/config
	${INSTALL_PROGRAM} ${WRKSRC}/privoxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/privoxy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/privoxy
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/privoxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/default.filter ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA} ${WRKSRC}/*.action ${PREFIX}/share/examples/privoxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/privoxy/templates
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/examples/privoxy/templates

.include <bsd.port.mk>
