# $OpenBSD: Makefile,v 1.2 2019/11/02 06:59:24 bentley Exp $

COMMENT =		ngspice shared library, based on Berkeley SPICE

PKGNAME =		libngspice-${V}

SHARED_LIBS +=		ngspice			0.0 # 0.0

WANTLIB += m pthread

CONFIGURE_ARGS +=	--with-ngshared

# same tests as cad/ngspice/ngspice, but they assume you've built a binary
NO_TEST =		Yes

post-install:
	@rm -r ${PREFIX}/share/ngspice/

.include <bsd.port.mk>
