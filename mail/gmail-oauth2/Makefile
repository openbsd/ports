COMMENT=	tool for authenticating to Gmail with OAuth2

GH_ACCOUNT=	google
GH_PROJECT=	gmail-oauth2-tools
GH_COMMIT=	e3229155a4037267ce40f1a3a681f53221aa4d8d

DISTNAME=	gmail-oauth2-0.20190529
REVISION=	1

CATEGORIES=	security mail

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
NO_BUILD=	Yes
MODPY_ADJ_FILES= python/oauth2.py

CONFIGURE_STYLE= none

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/python/oauth2.py ${PREFIX}/bin/

.include <bsd.port.mk>
