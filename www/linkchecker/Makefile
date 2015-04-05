# $OpenBSD: Makefile,v 1.42 2015/04/05 13:31:15 sthen Exp $

COMMENT=	checks HTML documents for broken links

V=		9.3
MODPY_EGG_VERSION=${V}
GH_ACCOUNT=	wummel
GH_PROJECT=	linkchecker
GH_TAGNAME=	upstream/$V

DISTNAME=	${GH_PROJECT}-${V}
CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.io/linkchecker/

MAINTAINER=	Amit Kulkarni <amitkulz@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

MODULES=	devel/gettext lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-dnspython \
		www/py-requests

WRKDIST=	${WRKDIR}/${GH_PROJECT}-upstream-${V}
NO_TEST=	Yes

.include <bsd.port.mk>
