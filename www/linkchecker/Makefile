# $OpenBSD: Makefile,v 1.52 2020/12/27 17:41:39 sthen Exp $

# git master has py3 support but requires dnspython>=2, which is
# py3-only, and other ports hard to convert to py3 depend on
# dnspython
COMMENT=	checks HTML documents for broken links, CLI

MODPY_EGG_VERSION= 9.4.0
REVISION=	0
GH_ACCOUNT=	linkchecker
GH_PROJECT=	linkchecker
GH_TAGNAME=	v${MODPY_EGG_VERSION}

HOMEPAGE=	https://linkchecker.github.io/linkchecker/

CATEGORIES=	www

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS=		devel/py-xdg \
			net/py-dnspython \
			www/py-requests

SEPARATE_BUILD=		Yes

NO_TEST=	Yes

.include <bsd.port.mk>
