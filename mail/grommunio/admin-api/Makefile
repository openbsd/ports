COMMENT=	management REST API for grommunio

V=		1.9
DISTNAME=	grommunio-admin-api-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	admin-api
GH_COMMIT=	774374b82e3a9d802ffb861b26f90318c161fb5b

CATEGORIES=	mail www productivity

MODULES=	devel/cmake lang/python

RUN_DEPENDS=	databases/py-ldap3${MODPY_FLAVOR} \
		databases/py-mysqlclient${MODPY_FLAVOR} \
		databases/py-redis${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR} \
		devel/py-argcomplete${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		mail/grommunio/gromox \
		mail/grommunio/libexmdbpp \
		net/py-idna${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR} \
		www/py-multidict${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

CONFIGURE_ARGS+=	-DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib \
			-DCONFDIR=${PREFIX}/share/examples/grommunio-admin-api \
			-DCOMMONCONFDIR=${PREFIX}/share/examples/grommunio-admin-common

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/grommunio-admin-api

.include <bsd.port.mk>
