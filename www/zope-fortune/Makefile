# $OpenBSD: Makefile,v 1.6 2006/02/08 08:39:01 steven Exp $

COMMENT=	"insert randomly-selected fortunes in your documents"

VERSION=	0.5.2
DISTNAME=	Fortune-${VERSION}
PKGNAME=	zope-fortune-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/lalo/Fortune/
MASTER_SITES=	${HOMEPAGE}${VERSION}/

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	www/zope

WRKDIST=	${WRKDIR}/lib/python/Products/Fortune

FORTUNEITEMS=	FortuneTag fortunesetup __init__

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}/Fortune
.for f in ${FORTUNEITEMS}
	${INSTALL_DATA} ${WRKDIST}/$f.{py,pyc} ${MODZOPE_PRODUCTSDIR}/Fortune
.endfor
	${INSTALL_DATA} ${WRKDIST}/README.txt ${MODZOPE_PRODUCTSDIR}/Fortune

.include <bsd.port.mk>
