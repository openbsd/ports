COMMENT=	tool for authenticating to Gmail with OAuth2

GH_ACCOUNT=	google
GH_PROJECT=	gmail-oauth2-tools
GH_COMMIT=	0c865b7b590292d5d8a197529127166e9d7d7d2d

DISTNAME=	gmail-oauth2-0.20250718

CATEGORIES=	security mail

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
NO_BUILD=	Yes
MODPY_ADJ_FILES= python/oauth2.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/python/oauth2.py ${PREFIX}/bin/

.include <bsd.port.mk>
