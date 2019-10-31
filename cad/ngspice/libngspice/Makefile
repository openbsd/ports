# $OpenBSD: Makefile,v 1.1.1.1 2019/10/31 06:01:34 bentley Exp $

COMMENT =		ngspice shared library, based on Berkeley SPICE

PKGNAME =		libngspice-${V}

SHARED_LIBS +=		ngspice			0.0 # 0.0

WANTLIB += m pthread

CONFIGURE_ARGS +=	--with-ngshared

post-install:
	@rm -r ${PREFIX}/share/ngspice/

.include <bsd.port.mk>
