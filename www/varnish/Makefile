# $OpenBSD: Makefile,v 1.6 2010/09/11 13:03:46 jim Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-2.1.3
CATEGORIES =		www

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

SHARED_LIBS +=		varnish		0.0
SHARED_LIBS +=		varnishapi	0.0
SHARED_LIBS +=		varnishcompat	0.0
SHARED_LIBS +=		vcl		0.0

HOMEPAGE =		http://www.varnish-cache.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c curses m pcre pthread
LIB_DEPENDS = 		::devel/pcre

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=varnish/}

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--localstatedir=/var

REGRESS_TARGET =	check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/varnish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	mv ${WRKINST}${SYSCONFDIR}/varnish/default.vcl \
	    ${PREFIX}/share/examples/varnish
	${INSTALL_DATA} ${WRKSRC}/doc/getting-started.html \
	    ${PREFIX}/share/doc/varnish

.include <bsd.port.mk>
