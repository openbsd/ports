# $OpenBSD: Makefile,v 1.51 2020/08/26 06:57:33 kirby Exp $

COMMENT=	checks HTML documents for broken links, CLI

GH_ACCOUNT=	linkchecker
GH_PROJECT=	linkchecker
GH_TAGNAME=	v9.4.0

MODPY_EGG_VERSION=${GH_TAGNAME:S/v//}

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
