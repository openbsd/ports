COMMENT=	management REST API for grommunio

V=		1.14
DISTNAME=	grommunio-admin-api-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	admin-api
GH_COMMIT=	63c43b5e4256c67b5a77bf29d3b85f08cdfc783b

REVISION=	1

CATEGORIES=	mail www productivity

MODULES=	devel/cmake lang/python

BUILD_DEPENDS=	textproc/py-yaml${MODPY_FLAVOR}

RUN_DEPENDS=	databases/py-ldap3${MODPY_FLAVOR} \
		databases/py-mysqlclient${MODPY_FLAVOR} \
		databases/py-redis${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR} \
		devel/py-argcomplete${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		mail/grommunio/gromox \
		mail/grommunio/libexmdbpp>=1.11 \
		net/py-idna${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR} \
		www/py-multidict${MODPY_FLAVOR} \
		www/py-openapi-core${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

CONFIGURE_ARGS+=	-DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib \
			-DCONFDIR=${PREFIX}/share/examples/grommunio-admin-api \
			-DCOMMONCONFDIR=${PREFIX}/share/examples/grommunio-admin-common

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/yaml2json.py ${WRKSRC}/main.py

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/grommunio-admin-api
	${INSTALL_DATA} ${FILESDIR}/database.yaml \
		${PREFIX}/share/examples/grommunio-admin-api/conf.d

.include <bsd.port.mk>
