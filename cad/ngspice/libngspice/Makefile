COMMENT =		ngspice shared library, based on Berkeley SPICE

PKGNAME =		libngspice-${V}
REVISION =		1

SHARED_LIBS +=		ngspice			0.0 # 0.0

WANTLIB += m pthread

CONFIGURE_ARGS +=	--with-ngshared

# same tests as cad/ngspice/ngspice, but they assume you've built a binary
NO_TEST =		Yes

post-install:
	@rm -r ${PREFIX}/share/ngspice/

.include <bsd.port.mk>
