COMMENT=	dynamic web application server

WANTLIB=	c crypto m pcre2-8 pthread ssl xml2 z

LIB_DEPENDS=	devel/pcre2
BUILD_DEPENDS=	lang/njs
RUN_DEPENDS=	lang/njs

MODULES=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_PYTEST=	Yes
TEST_DEPENDS+=	${MODPY_RUN_DEPENDS} \
		www/unit/unit-perl \
		www/unit/unit-php \
		www/unit/unit-python \
		www/unit/unit-ruby \
		www/ruby-rack

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/unit/modules/

do-test:
	cp ${LOCALBASE}/lib/unit/modules/* ${WRKSRC}/build/
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
