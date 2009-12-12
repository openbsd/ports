# $OpenBSD: Makefile,v 1.4 2009/12/12 17:38:19 fgsch Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-2.0.5
PKGNAME =		${DISTNAME}p0
CATEGORIES =		www

SHARED_LIBS =		varnish		0.0 \
			varnishapi	0.0 \
			varnishcompat	0.0 \
			vcl		0.0

HOMEPAGE =		http://varnish.projects.linpro.no/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c curses m pthread

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
