COMMENT=	management REST API for grommunio

V=		1.16
DISTNAME=	grommunio-admin-api-${V}
REVISION=	0

GH_ACCOUNT=	grommunio
GH_PROJECT=	admin-api
GH_COMMIT=	c518902687a35d56fd557ab2ad6088f60ff90809

CATEGORIES=	mail www productivity

MODULES=	devel/cmake lang/python

BUILD_DEPENDS=	textproc/py-yaml

RUN_DEPENDS=	databases/py-ldap3 \
		databases/py-mysqlclient \
		databases/py-redis \
		databases/py-sqlalchemy \
		devel/py-argcomplete \
		devel/py-jsonschema \
		mail/grommunio/gromox \
		mail/grommunio/libexmdbpp>=1.11 \
		net/py-idna \
		net/py-dnspython \
		security/py-cryptography \
		sysutils/py-psutil \
		textproc/py-yaml \
		www/py-flask \
		www/py-jwt \
		www/py-multidict \
		www/py-openapi-core \
		www/py-requests

CONFIGURE_ARGS+=	-DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib \
			-DCONFDIR=${PREFIX}/share/examples/grommunio-admin-api \
			-DCOMMONCONFDIR=${PREFIX}/share/examples/grommunio-admin-common

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/yaml2json.py ${WRKSRC}/main.py

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/grommunio-admin-api
	${INSTALL_DATA} ${FILESDIR}/database.yaml \
		${PREFIX}/share/examples/grommunio-admin-api/conf.d

.include <bsd.port.mk>
