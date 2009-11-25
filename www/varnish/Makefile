# $OpenBSD: Makefile,v 1.2 2009/11/25 11:36:55 bernd Exp $

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
CONFIGURE_ARGS =	--enable-stack-protector \
			--localstatedir=/var

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/varnish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	mv ${WRKINST}${SYSCONFDIR}/varnish/default.vcl \
	    ${PREFIX}/share/examples/varnish
	${INSTALL_DATA} ${WRKSRC}/doc/getting-started.html \
	    ${PREFIX}/share/doc/varnish

.include <bsd.port.mk>
