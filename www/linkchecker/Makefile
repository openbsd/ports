# $OpenBSD: Makefile,v 1.41 2014/12/06 21:26:42 kirby Exp $

COMMENT=	checks HTML documents for broken links

V=		9.3
MODPY_EGG_VERSION=${V}
GH_ACCOUNT=	wummel
GH_PROJECT=	linkchecker
GH_TAGNAME=	upstream/$V
GH_COMMIT=	85dadc1f1a1d1379d6e3565fc20697adb6f69521

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
